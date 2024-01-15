import 'package:flutter/material.dart';
import 'package:flutter_class/login_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TeacherScreen extends StatefulWidget {
  const TeacherScreen({super.key});

  @override
  State<TeacherScreen> createState() => _TeacherScreenState();
}

class _TeacherScreenState extends State<TeacherScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("Teacher"), automaticallyImplyLeading: false),
      body: Center(
        child: InkWell(
          onTap: () async {
            SharedPreferences sp = await SharedPreferences.getInstance();
            sp.clear();

            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const LoginScreen()));
          },
          child: Container(
            height: 50,
            width: double.infinity,
            color: Colors.green,
            child: const Center(child: Text("Logout")),
          ),
        )
      ),
    );
  }
}
