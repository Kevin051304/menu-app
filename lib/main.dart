import 'package:flutter/material.dart';
import 'package:menu/appetizer_state.dart';
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
      ],
      child: const MyApp(),
    ),
  );
}

Future<void> clearPersistedState() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.remove('appetizer_quantities');
  prefs.remove('appetizer_isFavorited');
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
