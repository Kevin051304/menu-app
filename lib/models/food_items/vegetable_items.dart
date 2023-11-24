class VegetableItems {
  String name;
  String price;
  bool isFavorited;

  VegetableItems({
    required this.name,
    required this.price,
    required this.isFavorited,
  });

  static List<VegetableItems> getItems() {
    List<VegetableItems> items = [];

    items.add(VegetableItems(
      name: 'Mixed Vegetables with Bean Curd',
      price: '\$10.95',
      isFavorited: false,
    ));

    items.add(VegetableItems(
      name: 'Hunan Vegetables with Bean Curd',
      price: '\$10.95',
      isFavorited: false,
    ));

    items.add(VegetableItems(
      name: 'String Bean Szechuan Style',
      price: '\$10.95',
      isFavorited: false,
    ));

    items.add(VegetableItems(
      name: 'Broccoli in Garlic Sauce',
      price: '\$10.95',
      isFavorited: false,
    ));

    items.add(VegetableItems(
      name: 'Mixed Vegetables with Bean Curd',
      price: '\$10.95',
      isFavorited: false,
    ));

    items.add(VegetableItems(
      name: 'Moo Shu Vegetables',
      price: '\$10.95',
      isFavorited: false,
    ));

    items.add(VegetableItems(
      name: 'Bean Curd Szechuan Style',
      price: '\$10.95',
      isFavorited: false,
    ));

    return items;
  }
}
