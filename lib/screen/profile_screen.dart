import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile Screen"),
        centerTitle: true,
        backgroundColor: Colors.blue[100],
      ),
      body: const Text("Hello This is my Profile"),
    );
  }
}
