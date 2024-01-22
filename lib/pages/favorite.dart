import 'package:flutter/material.dart';
import 'package:menu/food_state/appetizer_state.dart';
import 'package:menu/food_state/beef_state.dart';
import 'package:menu/food_state/chicken_state.dart';
import 'package:menu/food_state/item_state.dart';
import 'package:menu/food_state/noodles_state.dart';
import 'package:menu/food_state/pork_state.dart';
import 'package:menu/food_state/rice_state.dart';
import 'package:menu/food_state/salad_state.dart';
import 'package:menu/food_state/seafood_state.dart';
import 'package:menu/food_state/soup_state.dart';
import 'package:menu/food_state/vegetable_state.dart';
import 'package:provider/provider.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favorites'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 10, // Assuming you have a total of 10 food categories
              itemBuilder: (context, categoryIndex) {
                return Consumer<AppetizerState?>(
                  builder: (context, appetizerState, child) {
                    return Consumer<BeefState?>(
                      builder: (context, beefState, child) {
                        return Consumer<PorkState?>(
                          builder: (context, porkState, child) {
                            return Consumer<RiceState?>(
                              builder: (context, riceState, child) {
                                return Consumer<SaladState?>(
                                  builder: (context, saladState, child) {
                                    return Consumer<SeafoodState?>(
                                      builder: (context, seafoodState, child) {
                                        return Consumer<ChickenState?>(
                                          builder:
                                              (context, chickenState, child) {
                                            return Consumer<VegetableState?>(
                                              builder: (context, vegetableState,
                                                  child) {
                                                return Consumer<NoodlesState?>(
                                                  builder: (context,
                                                      noodlesState, child) {
                                                    return Consumer<SoupState?>(
                                                      builder: (context,
                                                          soupState, child) {
                                                        // Repeat the pattern for other categories
                                                        switch (categoryIndex) {
                                                          case 0:
                                                            return buildCategory(
                                                              appetizerState,
                                                              appetizerState
                                                                      ?.items ??
                                                                  [],
                                                              'Appetizer',
                                                            );
                                                          case 1:
                                                            return buildCategory(
                                                              beefState,
                                                              beefState
                                                                      ?.items ??
                                                                  [],
                                                              'Beef',
                                                            );
                                                          case 2:
                                                            return buildCategory(
                                                              porkState,
                                                              porkState
                                                                      ?.items ??
                                                                  [],
                                                              'Pork',
                                                            );
                                                          case 3:
                                                            return buildCategory(
                                                              riceState,
                                                              riceState
                                                                      ?.items ??
                                                                  [],
                                                              'Rice',
                                                            );
                                                          case 4:
                                                            return buildCategory(
                                                              saladState,
                                                              saladState
                                                                      ?.items ??
                                                                  [],
                                                              'Salad',
                                                            );
                                                          case 5:
                                                            return buildCategory(
                                                              seafoodState,
                                                              seafoodState
                                                                      ?.items ??
                                                                  [],
                                                              'Seafood',
                                                            );
                                                          case 6:
                                                            return buildCategory(
                                                              chickenState,
                                                              chickenState
                                                                      ?.items ??
                                                                  [],
                                                              'Chicken',
                                                            );
                                                          case 7:
                                                            return buildCategory(
                                                              vegetableState,
                                                              vegetableState
                                                                      ?.items ??
                                                                  [],
                                                              'Vegetable',
                                                            );
                                                          case 8:
                                                            return buildCategory(
                                                              noodlesState,
                                                              noodlesState
                                                                      ?.items ??
                                                                  [],
                                                              'Noodles',
                                                            );
                                                          case 9:
                                                            return buildCategory(
                                                              soupState,
                                                              soupState
                                                                      ?.items ??
                                                                  [],
                                                              'Soup',
                                                            );
                                                          default:
                                                            return const SizedBox
                                                                .shrink();
                                                        }
                                                      },
                                                    );
                                                  },
                                                );
                                              },
                                            );
                                          },
                                        );
                                      },
                                    );
                                  },
                                );
                              },
                            );
                          },
                        );
                      },
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget buildCategory(
    ItemState? state,
    List<dynamic> items,
    String categoryName,
  ) {
    final List<dynamic> allItems = [...items];

    if (state == null) {
      return const SizedBox.shrink();
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Text(
            '$categoryName Favorites',
            style: const TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        const SizedBox(height: 20),
        ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          itemCount: allItems.length,
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          padding: const EdgeInsets.only(left: 20, right: 20),
          itemBuilder: (context, index) {
            final item = allItems[index];
            final isFavorite = state.isFavorited[index];

            if (!isFavorite) {
              return const SizedBox.shrink();
            }

            return Container(
              height: 80,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0xff1D1617).withOpacity(0.07),
                    offset: const Offset(0, 10),
                    blurRadius: 40,
                    spreadRadius: 0,
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.star,
                      color: isFavorite ? Colors.yellow : Colors.grey,
                    ),
                    onPressed: () {
                      state.toggleFavorite(index);
                    },
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          item.name,
                          style: const TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                            fontSize: 15,
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(height: 5),
                        Row(
                          children: [
                            Text(
                              item.price,
                              style: const TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                                fontSize: 15,
                              ),
                            ),
                            const SizedBox(width: 8),
                            IconButton(
                              icon: const Icon(Icons.remove),
                              onPressed: () {
                                state.decrementQuantity(index);
                              },
                            ),
                            Container(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8),
                              child: Text(
                                "${state.quantities[index]}",
                                style: const TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                            IconButton(
                              icon: const Icon(Icons.add),
                              onPressed: () {
                                state.incrementQuantity(index);
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ],
    );
  }
}
