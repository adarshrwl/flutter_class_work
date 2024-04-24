import 'package:flutter/material.dart';

class ColumnScreenState extends StatefulWidget {
  const ColumnScreenState({super.key});

  @override
  State<ColumnScreenState> createState() => _ColumnScreenStateState();
}

class _ColumnScreenStateState extends State<ColumnScreenState> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Column"),
        centerTitle: true,
        backgroundColor: Colors.amber[100],
      ),
      body: Container(
        color: Colors.yellow,
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(onPressed: () {}, child: const Text("Button 1")),
            ElevatedButton(onPressed: () {}, child: const Text("Button 2")),
            ElevatedButton(onPressed: () {}, child: const Text("Button 3"))
          ],
        ),
      ),
    );
  }
}
