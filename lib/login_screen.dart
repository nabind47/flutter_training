import 'package:flutter/material.dart';
import 'package:flutter_class/home_screen.dart';
import 'package:flutter_class/student_screen.dart';
import 'package:flutter_class/teacher_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formData = GlobalKey<FormState>();

  final emailController = TextEditingController();
  final roleController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Authentication"),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextFormField(
              decoration: const InputDecoration(hintText: "Email"),
              controller: emailController,
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              decoration: const InputDecoration(hintText: "Role"),
              controller: roleController,
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              decoration: const InputDecoration(hintText: "Password"),
              controller: passwordController,
            ),
            const SizedBox(
              height: 40,
            ),
            InkWell(
              onTap: () async {
                SharedPreferences sp = await SharedPreferences.getInstance();
                sp.setString("email", emailController.text.toString());
                sp.setString("role", roleController.text.toString());
                // sp.setString("role", "student");
                sp.setBool("isAuthenticated", true);

                if (sp.getString("role") == "student") {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => StudentScreen()));
                } else if (sp.getString("role") == "teacher") {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => TeacherScreen()));
                } else {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomeScreen()));
                }
              },
              child: Container(
                height: 50,
                width: double.infinity,
                color: Colors.green,
                child: const Center(child: Text("Login")),
              ),
            )
          ],
        ),
      ),
    );
  }
}
