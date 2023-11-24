class SaladItems {
  String name;
  String price;
  bool isFavorited;

  SaladItems({
    required this.name,
    required this.price,
    required this.isFavorited,
  });

  static List<SaladItems> getItems() {
    List<SaladItems> items = [];

    items.add(SaladItems(
      name: 'Japanese Green Salad',
      price: '\$4.50',
      isFavorited: false,
    ));

    items.add(SaladItems(
      name: 'Seaweed Salad',
      price: '\$5.95',
      isFavorited: false,
    ));

    items.add(SaladItems(
      name: 'Baby Octopus Salad',
      price: '\$6.95',
      isFavorited: false,
    ));

    items.add(SaladItems(
      name: 'Squid Salad Japanese Style',
      price: '\$6.25',
      isFavorited: false,
    ));

    items.add(SaladItems(
      name: 'Avocado Salad',
      price: '\$7.95',
      isFavorited: false,
    ));

    items.add(SaladItems(
      name: 'Pepper Tuna Salad',
      price: '\$11.95',
      isFavorited: false,
    ));

    return items;
  }
}
