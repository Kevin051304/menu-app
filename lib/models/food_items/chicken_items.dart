class ChickenItems {
  String name;
  String price;
  bool isFavorited;

  ChickenItems({
    required this.name,
    required this.price,
    required this.isFavorited,
  });

  static List<ChickenItems> getItems() {
    List<ChickenItems> items = [];

    items.add(ChickenItems(
      name: 'Shredded Chicken in Hot Garlic Sauce',
      price: '\$12.95',
      isFavorited: false,
    ));

    items.add(ChickenItems(
      name: 'Pineapple Chicken',
      price: '\$12.95',
      isFavorited: false,
    ));

    items.add(ChickenItems(
      name: 'Lemon Chicken',
      price: '\$13.95',
      isFavorited: false,
    ));

    items.add(ChickenItems(
      name: 'Chicken with Cashew Nuts',
      price: '\$12.95',
      isFavorited: false,
    ));

    items.add(ChickenItems(
      name: 'Chicken Hunan Style',
      price: '\$12.95',
      isFavorited: false,
    ));

    items.add(ChickenItems(
      name: 'Sweet & Sour Chicken',
      price: '\$12.95',
      isFavorited: false,
    ));

    items.add(ChickenItems(
      name: 'Chicken with Broccoli',
      price: '\$12.95',
      isFavorited: false,
    ));

    items.add(ChickenItems(
      name: 'Moo Goo Gai Pan',
      price: '\$12.95',
      isFavorited: false,
    ));

    items.add(ChickenItems(
      name: 'Kung Pao Chicken',
      price: '\$12.95',
      isFavorited: false,
    ));

    items.add(ChickenItems(
      name: 'Chicken with Mixed Vegetables',
      price: '\$12.95',
      isFavorited: false,
    ));

    items.add(ChickenItems(
      name: 'Chicken String Beans',
      price: '\$12.95',
      isFavorited: false,
    ));

    items.add(ChickenItems(
      name: 'Shredded Chicken Szechuan Style',
      price: '\$12.95',
      isFavorited: false,
    ));

    items.add(ChickenItems(
      name: 'Chicken & Shrimp Combo',
      price: '\$13.95',
      isFavorited: false,
    ));

    items.add(ChickenItems(
      name: 'Orange Chicken',
      price: '\$13.95',
      isFavorited: false,
    ));

    items.add(ChickenItems(
      name: 'General Tso\'s Chicken',
      price: '\$13.95',
      isFavorited: false,
    ));

    items.add(ChickenItems(
      name: 'Sesame Chicken',
      price: '\$13.95',
      isFavorited: false,
    ));

    return items;
  }
}
