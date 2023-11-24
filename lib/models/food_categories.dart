class FoodCategoriesModel {
  String name;
  String iconPath;
  String categoryKey;

  FoodCategoriesModel(
      {required this.name, required this.iconPath, required this.categoryKey});

  static List<FoodCategoriesModel> getCategories() {
    List<FoodCategoriesModel> categories = [];

    categories.add(FoodCategoriesModel(
        name: 'Soup', iconPath: 'assets/icons/soup.svg', categoryKey: 'soup'));

    categories.add(FoodCategoriesModel(
        name: 'Salad',
        iconPath: 'assets/icons/salad.svg',
        categoryKey: 'salad'));

    categories.add(FoodCategoriesModel(
        name: 'Appetizer',
        iconPath: 'assets/icons/appetizer.png',
        categoryKey: 'appetizer'));

    categories.add(FoodCategoriesModel(
        name: 'Chicken Dishes',
        iconPath: 'assets/icons/chicken.png',
        categoryKey: 'chicken'));

    categories.add(FoodCategoriesModel(
        name: 'Pork Dishes',
        iconPath: 'assets/icons/pork.png',
        categoryKey: 'pork'));

    categories.add(FoodCategoriesModel(
        name: 'Beef Dishes',
        iconPath: 'assets/icons/beef.png',
        categoryKey: 'beef'));

    categories.add(FoodCategoriesModel(
        name: 'Seafood Dishes',
        iconPath: 'assets/icons/seafood.png',
        categoryKey: 'seafood'));

    categories.add(FoodCategoriesModel(
        name: 'Vegetable Dishes',
        iconPath: 'assets/icons/vegetable.png',
        categoryKey: 'vegetable'));

    categories.add(FoodCategoriesModel(
        name: 'Rice', iconPath: 'assets/icons/rice.png', categoryKey: 'rice'));

    categories.add(FoodCategoriesModel(
        name: 'Noodles',
        iconPath: 'assets/icons/noodles.png',
        categoryKey: 'noodles'));

    return categories;
  }
}
