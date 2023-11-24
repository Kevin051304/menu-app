class AppetizerItems {
  String name;
  String price;
  bool isFavorited;

  AppetizerItems({
    required this.name,
    required this.price,
    required this.isFavorited,
  });

  static List<AppetizerItems> getItems() {
    List<AppetizerItems> items = [];

    items.add(AppetizerItems(
      name: 'Vegetarian Spring Rolls',
      price: '\$4.25',
      isFavorited: false,
    ));

    items.add(AppetizerItems(
      name: 'Egg Rolls',
      price: '\$4.25',
      isFavorited: false,
    ));

    items.add(AppetizerItems(
      name: 'Edamame',
      price: '\$5.95',
      isFavorited: false,
    ));

    items.add(AppetizerItems(
      name: 'Skewered BBQ Beef',
      price: '\$7.95',
      isFavorited: false,
    ));

    items.add(AppetizerItems(
      name: 'Gyoza',
      price: '\$5.95',
      isFavorited: false,
    ));

    items.add(AppetizerItems(
      name: 'Fried Crabmeat Wontons',
      price: '\$6.95',
      isFavorited: false,
    ));

    items.add(AppetizerItems(
      name: 'Pork Dumplings',
      price: '\$6.95',
      isFavorited: false,
    ));

    items.add(AppetizerItems(
      name: 'Chicken Lettuce Wrap',
      price: '\$8.95',
      isFavorited: false,
    ));

    items.add(AppetizerItems(
      name: 'Shumai',
      price: '\$5.95',
      isFavorited: false,
    ));

    items.add(AppetizerItems(
      name: 'Shrimp Toasts',
      price: '\$4.25',
      isFavorited: false,
    ));

    items.add(AppetizerItems(
      name: 'Barbecue Spare Ribs',
      price: '\$8.95',
      isFavorited: false,
    ));

    return items;
  }
}
