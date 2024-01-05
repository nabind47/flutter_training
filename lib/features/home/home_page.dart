import 'package:flutter/material.dart';
import 'package:flutter_class/config/network/network_request.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    NetworkRequest().getTopHeadings();


    return const Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("Nam dul",style: TextStyle(fontSize: 50)),
        ],
      ),
    );
  }
}
