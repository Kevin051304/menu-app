class SeafoodItems {
  String name;
  String price;
  bool isFavorited;

  SeafoodItems({
    required this.name,
    required this.price,
    required this.isFavorited,
  });

  static List<SeafoodItems> getItems() {
    List<SeafoodItems> items = [];

    items.add(SeafoodItems(
      name: 'Jumbo Shrimp Szechuan Style',
      price: '\$14.95',
      isFavorited: false,
    ));

    items.add(SeafoodItems(
      name: 'Sweet & Sour Shrimp',
      price: '\$14.95',
      isFavorited: false,
    ));

    items.add(SeafoodItems(
      name: 'Shrimp with Mixed Vegetables',
      price: '\$14.95',
      isFavorited: false,
    ));

    items.add(SeafoodItems(
      name: 'Shrimp with Broccoli',
      price: '\$14.95',
      isFavorited: false,
    ));

    items.add(SeafoodItems(
      name: 'Shrimp with String Beans',
      price: '\$14.95',
      isFavorited: false,
    ));

    items.add(SeafoodItems(
      name: 'Hunan Scallops',
      price: '\$14.95',
      isFavorited: false,
    ));

    items.add(SeafoodItems(
      name: 'Triple Delight',
      price: '\$14.95',
      isFavorited: false,
    ));

    items.add(SeafoodItems(
      name: 'Shrimp Hunan Style',
      price: '\$14.95',
      isFavorited: false,
    ));

    items.add(SeafoodItems(
      name: 'Shrimp in Lobster Sauce',
      price: '\$14.95',
      isFavorited: false,
    ));

    items.add(SeafoodItems(
      name: 'Shrimp with Cashew Nuts',
      price: '\$14.95',
      isFavorited: false,
    ));

    items.add(SeafoodItems(
      name: 'Kung Pao Shrimp',
      price: '\$14.95',
      isFavorited: false,
    ));

    items.add(SeafoodItems(
      name: 'Shrimp with Snow Peas',
      price: '\$14.95',
      isFavorited: false,
    ));

    items.add(SeafoodItems(
      name: 'Scallop with Garlic Sauce',
      price: '\$14.95',
      isFavorited: false,
    ));

    items.add(SeafoodItems(
      name: 'Scallop & Shrimp with Vegetables',
      price: '\$15.95',
      isFavorited: false,
    ));

    return items;
  }
}
