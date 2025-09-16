import 'package:calculator/calculator_screen.dart';
import 'package:calculator/data/notifiers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(valueListenable: darkModeNotifier, builder: (context, darkMode, child) {
      return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calculator',
      theme: ThemeData(
        primaryColor: Colors.black,
        brightness: darkMode? Brightness.dark : Brightness.light
      ),
      home: CalculatorScreen(),

    );
    }
    );
}
    }