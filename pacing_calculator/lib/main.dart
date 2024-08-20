import 'package:flutter/material.dart';
import 'package:pacing_calculator/homepage.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Pacing Calculator",
    theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.red.shade100,
            primary: Colors.red.shade100,
            secondary: Colors.white),
        textTheme: const TextTheme(
          displayLarge: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        )),
    initialRoute: 'homePage',
    routes: {
      'homePage': (context) => const HomePage(),
    },
  ));
}
