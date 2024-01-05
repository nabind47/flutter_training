import 'package:flutter/material.dart';
import 'package:flutter_class/config/network/network_request.dart';
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
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple)),
      // home: const ContactPage(),
      home:const Dashboard()
    );
  }
}
