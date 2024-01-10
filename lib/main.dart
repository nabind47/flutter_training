import 'package:flutter/material.dart';
import 'package:flutter_class/features/calculator/calculator_page.dart';
import 'package:flutter_class/features/dashboard/dashboard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: "Flutter Class",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.pink)),
      // home:const Dashboard()
      home: const Calculator(),
    );
  }
}
