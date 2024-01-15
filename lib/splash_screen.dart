import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_class/home_screen.dart';
import 'package:flutter_class/login_screen.dart';
import 'package:flutter_class/student_screen.dart';
import 'package:flutter_class/teacher_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    isLogin();
  }

  void isLogin() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    bool isLogin = sp.getBool("isAuthenticated") ?? false;
    String role = sp.getString("role") ?? "";

    if (isLogin) {
      if (role == "student")
        Timer(Duration(seconds: 5), () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const StudentScreen()));
        });
      else if (role == "teacher"){
        Timer(Duration(seconds: 5), () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const TeacherScreen()));
        });
      }
      else {
        Timer(Duration(seconds: 5), () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const HomeScreen()));
        });
      }
    } else {
      Timer(Duration(seconds: 5), () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const LoginScreen()));
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Image(
          height: double.infinity,
          fit: BoxFit.fitHeight,
          image: NetworkImage(
              "https://images.pexels.com/photos/1400172/pexels-photo-1400172.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1")),
    );
  }
}
