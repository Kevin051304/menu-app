import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:menu/food_state/item_state.dart';
import 'package:menu/models/food_items/rice_items.dart';
import 'package:shared_preferences/shared_preferences.dart';

class RiceState extends ChangeNotifier implements ItemState {
  @override
  List<RiceItems> items = [];
  @override
  List<int> quantities = [];
  @override
  List<bool> isFavorited = [];

  Future<void> loadPersistedState() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    String quantitiesString = prefs.getString('rice_quantities') ?? '[]';
    List<dynamic> quantitiesJson = json.decode(quantitiesString);
    quantities = List<int>.from(
        quantitiesJson.map((quantity) => quantity as int),
        growable: true);

    if (quantities.length < items.length) {
      quantities.addAll(List<int>.filled(items.length - quantities.length, 0));
    }

    String favoritesString = prefs.getString('rice_isFavorited') ?? '[]';
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
    prefs.setString('rice_quantities', quantitiesString);

    String favoritesString = json.encode(isFavorited);
    prefs.setString('rice_isFavorited', favoritesString);
  }

  void getInitialInfo() {
    items = RiceItems.getItems();
    loadPersistedState();
  }

  @override
  void toggleFavorite(int index) {
    isFavorited[index] = !isFavorited[index];
    persistState();

    Future.delayed(const Duration(milliseconds: 1), () {
      notifyListeners();
    });
  }

  @override
  void incrementQuantity(int index) {
    quantities[index] = quantities[index] + 1;
    persistState();
    notifyListeners();
  }

  @override
  void decrementQuantity(int index) {
    quantities[index] = quantities[index] > 0 ? quantities[index] - 1 : 0;
    persistState();
    notifyListeners();
  }
}
