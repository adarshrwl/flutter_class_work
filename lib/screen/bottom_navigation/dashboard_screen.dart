
import 'package:flutter/material.dart';
import 'package:flutter_application/screen/bottom_navigation/about_screen.dart';
import 'package:flutter_application/screen/bottom_navigation/cart_screen.dart';
import 'package:flutter_application/screen/bottom_navigation/home_screen.dart';
import 'package:flutter_application/screen/student_detail_screen.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int _selectedIndex = 0;
  List<Widget> lstBottomScreen = [
    const HomeScreen(),
    const CartScreen(),
    const StudentDetail(),
    const AboutScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("Dashboard Screen"),
          centerTitle: true,
          backgroundColor: Colors.amber[100]),
      body: lstBottomScreen[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.green[100],
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag), label: "Cart"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "About"),
        ],
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}
