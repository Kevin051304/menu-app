import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:menu/food_state/item_state.dart';
import 'package:menu/models/food_items/chicken_items.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ChickenState extends ChangeNotifier implements ItemState {
  @override
  List<ChickenItems> items = [];
  @override
  List<int> quantities = [];
  @override
  List<bool> isFavorited = [];

  Future<void> loadPersistedState() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    String quantitiesString = prefs.getString('chicken_quantities') ?? '[]';
    List<dynamic> quantitiesJson = json.decode(quantitiesString);
    quantities = List<int>.from(
        quantitiesJson.map((quantity) => quantity as int),
        growable: true);

    if (quantities.length < items.length) {
      quantities.addAll(List<int>.filled(items.length - quantities.length, 0));
    }

    String favoritesString = prefs.getString('chicken_isFavorited') ?? '[]';
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
    prefs.setString('chicken_quantities', quantitiesString);

    String favoritesString = json.encode(isFavorited);
    prefs.setString('chicken_isFavorited', favoritesString);
  }

  void getInitialInfo() {
    items = ChickenItems.getItems();
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
