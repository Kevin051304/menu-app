import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:menu/models/food_categories.dart';
import 'package:menu/pages/food_type/beef.dart';
import 'package:menu/pages/food_type/chicken.dart';
import 'package:menu/pages/food_type/noodles.dart';
import 'package:menu/pages/food_type/pork.dart';
import 'package:menu/pages/food_type/rice.dart';
import 'package:menu/pages/food_type/seafood.dart';
import 'package:menu/pages/food_type/soup.dart';
import 'package:menu/pages/food_type/salad.dart';
import 'package:menu/pages/food_type/appetizer.dart';
import 'package:menu/pages/food_type/vegetable.dart';

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  HomePage({super.key});

  List<FoodCategoriesModel> categories = [];

  void getInitialInfo() {
    categories = FoodCategoriesModel.getCategories();
  }

  @override
  Widget build(BuildContext context) {
    getInitialInfo();
    return Scaffold(
        appBar: appBar(),
        backgroundColor: Colors.white,
        body: ListView(
          children: [
            searchField(),
            const SizedBox(
              height: 20,
            ),
            categorySection(),
            const SizedBox(
              height: 20,
            ),
          ],
        ));
  }

  Column categorySection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 20),
          child: Text(
            'Categories',
            style: TextStyle(
                color: Colors.black, fontSize: 18, fontWeight: FontWeight.w600),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        ListView.separated(
          physics: const NeverScrollableScrollPhysics(),
          itemCount: categories.length,
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          separatorBuilder: (context, index) => const SizedBox(
            height: 20,
          ),
          padding: const EdgeInsets.only(left: 20, right: 20),
          itemBuilder: (context, index) {
            return Container(
              height: 50,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                        color: const Color(0xff1D1617).withOpacity(0.07),
                        offset: const Offset(0, 10),
                        blurRadius: 40,
                        spreadRadius: 0)
                  ]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  if (categories[index].iconPath.endsWith('.jpg') ||
                      categories[index].iconPath.endsWith('.png'))
                    Image.asset(
                      categories[index].iconPath,
                      width: 100,
                      height: 100,
                    )
                  else if (categories[index].iconPath.endsWith('.svg'))
                    SvgPicture.asset(
                      categories[index].iconPath,
                      width: 65,
                      height: 65,
                    ),
                  Text(
                    categories[index].name,
                    style: const TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                        fontSize: 15),
                  ),
                  GestureDetector(
                    onTap: () {
                      String categoryKey = categories[index].categoryKey;
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            if (categoryKey == 'soup') {
                              return const Soup();
                            } else if (categoryKey == 'salad') {
                              return const Salad();
                            } else if (categoryKey == 'appetizer') {
                              return const Appetizer();
                            } else if (categoryKey == 'chicken') {
                              return const Chicken();
                            } else if (categoryKey == 'pork') {
                              return const Pork();
                            } else if (categoryKey == 'beef') {
                              return const Beef();
                            } else if (categoryKey == 'seafood') {
                              return const Seafood();
                            } else if (categoryKey == 'vegetable') {
                              return const Vegetable();
                            } else if (categoryKey == 'rice') {
                              return const Rice();
                            } else if (categoryKey == 'noodles') {
                              return const Noodles();
                            }
                            return Container();
                          },
                        ),
                      );
                    },
                    child: SvgPicture.asset(
                      'assets/icons/Button.svg',
                      width: 30,
                      height: 30,
                    ),
                  )
                ],
              ),
            );
          },
        )
      ],
    );
  }

  AppBar appBar() {
    return AppBar(
      title: const Text(
        'Our Menu',
        style: TextStyle(
            color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
      ),
      backgroundColor: Colors.white,
      elevation: 0.0,
      centerTitle: true,
    );
  }

  Container searchField() {
    return Container(
      margin: const EdgeInsets.only(top: 0, left: 20, right: 20),
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
            color: const Color(0xff1D1617).withOpacity(0.1),
            blurRadius: 40,
            spreadRadius: 0.0)
      ]),
      child: TextField(
        decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            contentPadding: const EdgeInsets.all(15),
            hintText: 'Search Menu',
            hintStyle: const TextStyle(color: Color(0xffDDDADA), fontSize: 14),
            prefixIcon: Padding(
              padding: const EdgeInsets.all(12),
              child: SvgPicture.asset('assets/icons/Search.svg'),
            ),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide.none)),
      ),
    );
  }
}
