import 'package:flutter/material.dart';
import 'package:menu/food_state/pork_state.dart';
import 'package:provider/provider.dart';

class Pork extends StatefulWidget {
  const Pork({super.key});

  @override
  _PorkState createState() => _PorkState();
}

class _PorkState extends State<Pork> with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Provider.of<PorkState>(context, listen: false).getInitialInfo();
    });
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Consumer<PorkState>(builder: (context, porkState, child) {
      return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Pork',
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
                itemCount: porkState.items.length,
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
                              porkState.toggleFavorite(index);
                            });
                          },
                          child: Icon(
                            Icons.star,
                            color: porkState.isFavorited[index]
                                ? Colors.yellow
                                : Colors.grey,
                          ),
                        ),
                        Expanded(
                          child: Text(
                            porkState.items[index].name,
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
                              porkState.items[index].price,
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
                                  porkState.decrementQuantity(index);
                                });
                              },
                            ),
                            Container(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8),
                              child: Text(
                                "${porkState.quantities[index]}",
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
                                  porkState.incrementQuantity(index);
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
