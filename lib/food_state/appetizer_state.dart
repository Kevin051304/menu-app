import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:menu/models/food_items/appetizer_items.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppetizerState extends ChangeNotifier {
  List<AppetizerItems> items = [];
  List<int> quantities = [];
  List<bool> isFavorited = [];

  // Load persisted state during initialization
  Future<void> loadPersistedState() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    // Load quantities
    String quantitiesString = prefs.getString('appetizer_quantities') ?? '[]';
    List<dynamic> quantitiesJson = json.decode(quantitiesString);
    quantities = List<int>.from(
        quantitiesJson.map((quantity) => quantity as int),
        growable: true);

    // Ensure quantities has the correct length
    if (quantities.length < items.length) {
      quantities.addAll(List<int>.filled(items.length - quantities.length, 0));
    }

    // Load favorites
    String favoritesString = prefs.getString('appetizer_isFavorited') ?? '[]';
    List<dynamic> favoritesJson = json.decode(favoritesString);
    isFavorited = List<bool>.from(
        favoritesJson.map((favorite) => favorite as bool),
        growable: true);

    // Ensure isFavorited has the correct length
    if (isFavorited.length < items.length) {
      isFavorited
          .addAll(List<bool>.filled(items.length - isFavorited.length, false));
    }

    notifyListeners();
  }

  // Save state to shared preferences
  Future<void> persistState() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    // Save quantities
    String quantitiesString = json.encode(quantities);
    prefs.setString('appetizer_quantities', quantitiesString);

    // Save favorites
    String favoritesString = json.encode(isFavorited);
    prefs.setString('appetizer_isFavorited', favoritesString);
  }

  void getInitialInfo() {
    items = AppetizerItems.getItems();
    // Load persisted state during initialization
    loadPersistedState();
  }

  void toggleFavorite(int index) {
    isFavorited[index] = !isFavorited[index];
    // Save state when favorites are toggled
    persistState();

    // Wrap the state change in a delayed function
    Future.delayed(const Duration(milliseconds: 1), () {
      notifyListeners();
    });
  }

  void incrementQuantity(int index) {
    quantities[index] = quantities[index] + 1;
    // Save state when quantities are incremented
    persistState();
    notifyListeners();
  }

  void decrementQuantity(int index) {
    quantities[index] = quantities[index] > 0 ? quantities[index] - 1 : 0;
    // Save state when quantities are decremented
    persistState();
    notifyListeners();
  }
}
