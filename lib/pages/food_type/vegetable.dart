import 'package:flutter/material.dart';
import 'package:menu/food_state/vegetable_state.dart';
import 'package:provider/provider.dart';

class Vegetable extends StatefulWidget {
  const Vegetable({super.key});

  @override
  _VegetableState createState() => _VegetableState();
}

class _VegetableState extends State<Vegetable>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Provider.of<VegetableState>(context, listen: false).getInitialInfo();
    });
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Consumer<VegetableState>(builder: (context, vegetableState, child) {
      return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Vegetable',
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Colors.white,
          elevation: 0.0,
          centerTitle: true,
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        backgroundColor: Colors.white,
        body: Column(
          children: [
            const SizedBox(height: 20),
            Expanded(
              child: ListView.separated(
                itemCount: vegetableState.items.length,
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                separatorBuilder: (context, index) =>
                    const SizedBox(height: 20),
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
                          spreadRadius: 0,
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              vegetableState.toggleFavorite(index);
                            });
                          },
                          child: Icon(
                            Icons.star,
                            color: vegetableState.isFavorited[index]
                                ? Colors.yellow
                                : Colors.grey,
                          ),
                        ),
                        Expanded(
                          child: Text(
                            vegetableState.items[index].name,
                            style: const TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              vegetableState.items[index].price,
                              style: const TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                                fontSize: 15,
                              ),
                            ),
                            IconButton(
                              icon: const Icon(Icons.remove),
                              onPressed: () {
                                setState(() {
                                  vegetableState.decrementQuantity(index);
                                });
                              },
                            ),
                            Container(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8),
                              child: Text(
                                "${vegetableState.quantities[index]}",
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
                                setState(() {
                                  vegetableState.incrementQuantity(index);
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      );
    });
  }

  @override
  void dispose() {
    super.dispose();
  }
}
