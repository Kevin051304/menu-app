import 'package:flutter/material.dart';
import 'package:menu/food_state/appetizer_state.dart';
import 'package:menu/food_state/beef_state.dart';
import 'package:menu/food_state/chicken_state.dart';
import 'package:menu/food_state/noodles_state.dart';
import 'package:menu/food_state/pork_state.dart';
import 'package:menu/food_state/rice_state.dart';
import 'package:menu/food_state/salad_state.dart';
import 'package:menu/food_state/seafood_state.dart';
import 'package:menu/food_state/soup_state.dart';
import 'package:menu/food_state/vegetable_state.dart';
import 'package:menu/pages/welcome.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Clear the persisted state during app initialization
  await clearPersistedState();

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AppetizerState()),
        ChangeNotifierProvider(create: (_) => BeefState()),
        ChangeNotifierProvider(create: (_) => ChickenState()),
        ChangeNotifierProvider(create: (_) => NoodlesState()),
        ChangeNotifierProvider(create: (_) => PorkState()),
        ChangeNotifierProvider(create: (_) => RiceState()),
        ChangeNotifierProvider(create: (_) => SaladState()),
        ChangeNotifierProvider(create: (_) => SeafoodState()),
        ChangeNotifierProvider(create: (_) => SoupState()),
        ChangeNotifierProvider(create: (_) => VegetableState()),
      ],
      child: const MyApp(),
    ),
  );
}

Future<void> clearPersistedState() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.remove('appetizer_quantities');
  prefs.remove('appetizer_isFavorited');
  prefs.remove('beef_quantities');
  prefs.remove('beef_isFavorited');
  prefs.remove('chicken_quantities');
  prefs.remove('chicken_isFavorited');
  prefs.remove('noodles_quantities');
  prefs.remove('noodles_isFavorited');
  prefs.remove('pork_quantities');
  prefs.remove('pork_isFavorited');
  prefs.remove('rice_quantities');
  prefs.remove('rice_isFavorited');
  prefs.remove('salad_quantities');
  prefs.remove('salad_isFavorited');
  prefs.remove('seafood_quantities');
  prefs.remove('seafood_isFavorited');
  prefs.remove('soup_quantities');
  prefs.remove('soup_isFavorited');
  prefs.remove('vegetable_quantities');
  prefs.remove('vegetable_isFavorited');
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Poppins'),
      home: const Welcome(),
    );
  }
}
