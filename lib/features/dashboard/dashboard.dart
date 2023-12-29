import 'package:flutter/material.dart';
import 'package:flutter_class/features/contacts/contact_page.dart';
import 'package:flutter_class/features/home/home_page.dart';

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
              icon: Icon(Icons.contacts),
              activeIcon: Icon(Icons.contacts_outlined),
              label: "Contacts"),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              activeIcon: Icon(Icons.settings_outlined),
              label: "Settings"),
          //   BottomNavigationBarItem(
          //       icon: SvgPicture.asset("assets/dashboard/contact_outlined.svg"),
          //       activeIcon: SvgPicture.asset("assets/dashboard/contact.svg"),
          //       label: "Home"),
          //   BottomNavigationBarItem(
          //       icon: SvgPicture.asset("assets/dashboard/contact_outlined.svg"),
          //       activeIcon: SvgPicture.asset("assets/dashboard/contact.svg"),
          //       label: "Contact"),
        ],
      ),
    );
  }

  Widget dashboardBody(int bottomNavIndex) {
    switch (bottomNavIndex) {
      case 0:
        return const HomePage();
      case 1:
        return const ContactPage();
      case 2:
        return const Text("Settings");
      default:
        return Container();
    }
  }
}
