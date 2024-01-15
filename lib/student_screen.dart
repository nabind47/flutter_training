import 'package:flutter/material.dart';
import 'package:flutter_class/login_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class StudentScreen extends StatefulWidget {
  const StudentScreen({super.key});

  @override
  State<StudentScreen> createState() => _StudentScreenState();
}

class _StudentScreenState extends State<StudentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Student"),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Column(
        children: [
          InkWell(
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
        ],
      ),
    );
  }
}
