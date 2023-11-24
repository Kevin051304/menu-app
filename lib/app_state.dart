import 'package:flutter/material.dart';

class AppState extends ChangeNotifier {
  List<int> quantities = List.generate(50, (index) => 0);
  List<bool> isFavorited = List.generate(50, (index) => false);

  void toggleFavorite(int index) {
    isFavorited[index] = !isFavorited[index];
    notifyListeners();
  }

  void toggleMinus(int index) {
    quantities[index] = quantities[index] > 0 ? quantities[index] - 1 : 0;
    notifyListeners();
  }

  void toggleAdd(int index) {
    quantities[index] = quantities[index] > 0 ? quantities[index] + 1 : 0;
    notifyListeners();
  }
}
