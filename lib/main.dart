import 'package:flutter/material.dart';
import 'package:flutter_class/home_screen.dart';
import 'package:flutter_class/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: "Shared Preference",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.pink)),
      home: const SplashScreen(),
    );
  }
}
