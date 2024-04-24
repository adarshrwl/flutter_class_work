import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Mathematical extends StatefulWidget {
  const Mathematical({super.key});

  @override
  State<Mathematical> createState() => _MathematicalState();
}

class _MathematicalState extends State<Mathematical> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Adarsh Rawal"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          TextFormField(),
          TextFormField(),
        ],
      ),
    );
  }
}
