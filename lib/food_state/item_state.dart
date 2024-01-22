abstract class ItemState {
  List<dynamic> get items;
  List<bool> get isFavorited;
  List<int> get quantities;

  void toggleFavorite(int index);
  void incrementQuantity(int index);
  void decrementQuantity(int index);
}
