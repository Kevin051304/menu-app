class SoupItems {
  String name;
  String price;
  bool isFavorited;

  SoupItems({
    required this.name,
    required this.price,
    required this.isFavorited,
  });

  static List<SoupItems> getItems() {
    List<SoupItems> items = [];

    items.add(SoupItems(
      name: 'Miso Soup',
      price: '\$3.95',
      isFavorited: false,
    ));

    items.add(SoupItems(
      name: 'Chicken & Corn Soup',
      price: '\$3.95',
      isFavorited: false,
    ));

    items.add(SoupItems(
      name: 'Chicken Noodle Soup',
      price: '\$3.95',
      isFavorited: false,
    ));

    items.add(SoupItems(
      name: 'Chicken Rice Soup',
      price: '\$3.95',
      isFavorited: false,
    ));

    items.add(SoupItems(
      name: 'Hot & Sour Soup',
      price: '\$3.95',
      isFavorited: false,
    ));

    items.add(SoupItems(
      name: 'Chicken Rice Soup',
      price: '\$3.95',
      isFavorited: false,
    ));

    items.add(SoupItems(
      name: 'Wonton Soup',
      price: '\$3.95',
      isFavorited: false,
    ));

    items.add(SoupItems(
      name: 'Spicy Beef Soup',
      price: '\$5.95',
      isFavorited: false,
    ));

    items.add(SoupItems(
      name: 'Ten Ingredient Wonton Soup (for 2)',
      price: '\$8.95',
      isFavorited: false,
    ));

    return items;
  }
}
