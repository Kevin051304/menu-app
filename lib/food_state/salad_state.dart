import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:menu/models/food_items/salad_items.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SaladState extends ChangeNotifier {
  List<SaladItems> items = [];
  List<int> quantities = [];
  List<bool> isFavorited = [];

  Future<void> loadPersistedState() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    String quantitiesString = prefs.getString('salad_quantities') ?? '[]';
    List<dynamic> quantitiesJson = json.decode(quantitiesString);
    quantities = List<int>.from(
        quantitiesJson.map((quantity) => quantity as int),
        growable: true);

    if (quantities.length < items.length) {
      quantities.addAll(List<int>.filled(items.length - quantities.length, 0));
    }

    String favoritesString = prefs.getString('salad_isFavorited') ?? '[]';
    List<dynamic> favoritesJson = json.decode(favoritesString);
    isFavorited = List<bool>.from(
        favoritesJson.map((favorite) => favorite as bool),
        growable: true);

    if (isFavorited.length < items.length) {
      isFavorited
          .addAll(List<bool>.filled(items.length - isFavorited.length, false));
    }

    notifyListeners();
  }

  Future<void> persistState() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    String quantitiesString = json.encode(quantities);
    prefs.setString('salad_quantities', quantitiesString);

    String favoritesString = json.encode(isFavorited);
    prefs.setString('salad_isFavorited', favoritesString);
  }

  void getInitialInfo() {
    items = SaladItems.getItems();
    loadPersistedState();
  }

  void toggleFavorite(int index) {
    isFavorited[index] = !isFavorited[index];
    persistState();

    Future.delayed(const Duration(milliseconds: 1), () {
      notifyListeners();
    });
  }

  void incrementQuantity(int index) {
    quantities[index] = quantities[index] + 1;
    persistState();
    notifyListeners();
  }

  void decrementQuantity(int index) {
    quantities[index] = quantities[index] > 0 ? quantities[index] - 1 : 0;
    persistState();
    notifyListeners();
  }
}