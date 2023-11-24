class RiceItems {
  String name;
  String price;
  bool isFavorited;

  RiceItems({
    required this.name,
    required this.price,
    required this.isFavorited,
  });

  static List<RiceItems> getItems() {
    List<RiceItems> items = [];

    items.add(RiceItems(
      name: 'Shrimp Fried Rice',
      price: '\$11.50',
      isFavorited: false,
    ));

    items.add(RiceItems(
      name: 'Chicken Fried Rice',
      price: '\$11.50',
      isFavorited: false,
    ));

    items.add(RiceItems(
      name: 'Pork Fried Rice',
      price: '\$11.50',
      isFavorited: false,
    ));

    items.add(RiceItems(
      name: 'Beef Fried Rice',
      price: '\$11.50',
      isFavorited: false,
    ));

    items.add(RiceItems(
      name: 'Vegetable Fried Rice',
      price: '\$11.50',
      isFavorited: false,
    ));

    items.add(RiceItems(
      name: 'House Fried Rice',
      price: '\$11.50',
      isFavorited: false,
    ));

    items.add(RiceItems(
      name: 'Jumbo Lump Crab Meat Fried Rice',
      price: '\$22.95',
      isFavorited: false,
    ));

    items.add(RiceItems(
      name: 'Pineapple Fried Rice',
      price: '\$12.95',
      isFavorited: false,
    ));

    items.add(RiceItems(
      name: 'White Rice',
      price: '\$3.00',
      isFavorited: false,
    ));

    return items;
  }
}
