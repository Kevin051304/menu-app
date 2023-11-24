class BeefItems {
  String name;
  String price;
  bool isFavorited;

  BeefItems({
    required this.name,
    required this.price,
    required this.isFavorited,
  });

  static List<BeefItems> getItems() {
    List<BeefItems> items = [];

    items.add(BeefItems(
      name: 'Sliced Beef with Onions & Scallion',
      price: '\$14.95',
      isFavorited: false,
    ));

    items.add(BeefItems(
      name: 'Sliced Beef Szechuan Style',
      price: '\$14.95',
      isFavorited: false,
    ));

    items.add(BeefItems(
      name: 'Sliced Beef with Broccoli',
      price: '\$14.95',
      isFavorited: false,
    ));

    items.add(BeefItems(
      name: 'Shredded Beef in Garlic Sauce',
      price: '\$14.95',
      isFavorited: false,
    ));

    items.add(BeefItems(
      name: 'Pepper Steak with Onions',
      price: '\$14.95',
      isFavorited: false,
    ));

    items.add(BeefItems(
      name: 'Sliced Beef with Mixed Vegetables',
      price: '\$14.95',
      isFavorited: false,
    ));

    items.add(BeefItems(
      name: 'Sliced Beef Sauteed with Snow Peas',
      price: '\$14.95',
      isFavorited: false,
    ));

    items.add(BeefItems(
      name: 'Sliced Beef Hunan Style',
      price: '\$14.95',
      isFavorited: false,
    ));

    return items;
  }
}
