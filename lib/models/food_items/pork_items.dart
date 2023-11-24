class PorkItems {
  String name;
  String price;
  bool isFavorited;

  PorkItems({
    required this.name,
    required this.price,
    required this.isFavorited,
  });

  static List<PorkItems> getItems() {
    List<PorkItems> items = [];

    items.add(PorkItems(
      name: 'Moo Shu Pork',
      price: '\$12.95',
      isFavorited: false,
    ));

    items.add(PorkItems(
      name: 'Double Cooked Pork',
      price: '\$12.95',
      isFavorited: false,
    ));

    items.add(PorkItems(
      name: 'Sweet & Sour Pork',
      price: '\$12.95',
      isFavorited: false,
    ));

    items.add(PorkItems(
      name: 'Hunan Pork',
      price: '\$12.95',
      isFavorited: false,
    ));

    items.add(PorkItems(
      name: 'Pork with Broccoli',
      price: '\$12.95',
      isFavorited: false,
    ));

    return items;
  }
}
