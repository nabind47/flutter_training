import 'package:flutter/material.dart';
import 'package:flutter_class/features/auth/login_page.dart';
import 'package:flutter_class/features/contacts/contact_page.dart';
import 'package:flutter_class/features/counter/counter_page.dart';
import 'package:flutter_class/features/home/home_page.dart';
import 'package:flutter_class/features/movies/movies_page.dart';
import 'package:flutter_class/features/top_headlines/top_headlines_page.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _bottomNavIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: const Text("Dashboard")),
      // body: const Column(children: [Text("Dashboard")]),
      body: dashboardBody(_bottomNavIndex),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _bottomNavIndex,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            _bottomNavIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              activeIcon: Icon(Icons.home),
              label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.newspaper),
              activeIcon: Icon(Icons.newspaper_outlined),
              label: "News"),
          BottomNavigationBarItem(
              icon: Icon(Icons.contacts),
              activeIcon: Icon(Icons.contacts_outlined),
              label: "Contacts"),
          BottomNavigationBarItem(
              icon: Icon(Icons.heart_broken),
              activeIcon: Icon(Icons.heart_broken_outlined),
              label: "Counter"),
          BottomNavigationBarItem(
              icon: Icon(Icons.local_movies),
              activeIcon: Icon(Icons.local_movies_outlined),
              label: "Movies"),
        ],
      ),
    );
  }

  Widget dashboardBody(int bottomNavIndex) {
    switch (bottomNavIndex) {
      case 0:
        return const HomePage();
      case 1:
        return const TopHeadlines();
      case 2:
        return const ContactPage();
      case 3:
        return const CounterPage();
      case 4:

        return const MoviesPage();
      default:
        return Container();
    }
  }
}
