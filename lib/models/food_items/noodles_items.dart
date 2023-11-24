class NoodlesItems {
  String name;
  String price;
  bool isFavorited;

  NoodlesItems({
    required this.name,
    required this.price,
    required this.isFavorited,
  });

  static List<NoodlesItems> getItems() {
    List<NoodlesItems> items = [];

    items.add(NoodlesItems(
      name: 'Shrimp Lo Mein',
      price: '\$11.95',
      isFavorited: false,
    ));

    items.add(NoodlesItems(
      name: 'Chicken Lo Mein',
      price: '\$11.95',
      isFavorited: false,
    ));

    items.add(NoodlesItems(
      name: 'Pork Lo Mein',
      price: '\$11.95',
      isFavorited: false,
    ));

    items.add(NoodlesItems(
      name: 'Beef Lo Mein',
      price: '\$11.95',
      isFavorited: false,
    ));

    items.add(NoodlesItems(
      name: 'Vegetable Lo Mein',
      price: '\$11.95',
      isFavorited: false,
    ));

    items.add(NoodlesItems(
      name: 'House Lo Mein',
      price: '\$11.95',
      isFavorited: false,
    ));

    items.add(NoodlesItems(
      name: 'Shrimp Cantonese Style Chow Fun',
      price: '\$13.95',
      isFavorited: false,
    ));

    items.add(NoodlesItems(
      name: 'Chicken Cantonese Style Chow Fun',
      price: '\$13.95',
      isFavorited: false,
    ));

    items.add(NoodlesItems(
      name: 'Pork Cantonese Style Chow Fun',
      price: '\$13.95',
      isFavorited: false,
    ));

    items.add(NoodlesItems(
      name: 'Beef Cantonese Style Chow Fun',
      price: '\$13.95',
      isFavorited: false,
    ));

    items.add(NoodlesItems(
      name: 'Vegetable Cantonese Style Chow Fun',
      price: '\$13.95',
      isFavorited: false,
    ));

    items.add(NoodlesItems(
      name: 'Fujian Style Rice Noodle',
      price: '\$13.95',
      isFavorited: false,
    ));

    items.add(NoodlesItems(
      name: 'Singapore Style Rice Noodle',
      price: '\$13.95',
      isFavorited: false,
    ));

    items.add(NoodlesItems(
      name: 'Shrimp Cantonese Style Chow Fun',
      price: '\$13.95',
      isFavorited: false,
    ));

    items.add(NoodlesItems(
      name: 'Chicken Japanese Udon',
      price: '\$12.95',
      isFavorited: false,
    ));

    items.add(NoodlesItems(
      name: 'Shrimp Tempura Japanese Udon',
      price: '\$12.95',
      isFavorited: false,
    ));

    items.add(NoodlesItems(
      name: 'Eel Japanese Udon',
      price: '\$12.95',
      isFavorited: false,
    ));

    items.add(NoodlesItems(
      name: 'Beef Japanese Udon',
      price: '\$12.95',
      isFavorited: false,
    ));

    items.add(NoodlesItems(
      name: 'Vegetable Japanese Udon',
      price: '\$12.95',
      isFavorited: false,
    ));

    items.add(NoodlesItems(
      name: 'Shrimp Pad Thai',
      price: '\$13.95',
      isFavorited: false,
    ));

    items.add(NoodlesItems(
      name: 'Beef Pad Thai',
      price: '\$13.95',
      isFavorited: false,
    ));

    items.add(NoodlesItems(
      name: 'Chicken Pad Thai',
      price: '\$13.95',
      isFavorited: false,
    ));

    return items;
  }
}
