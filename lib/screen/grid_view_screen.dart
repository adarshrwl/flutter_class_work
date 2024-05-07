import 'package:flutter/material.dart';
import 'package:flutter_application/common/listitle/container_widget.dart';

class GridViewScreen extends StatelessWidget {
  const GridViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Grid View"),
        centerTitle: true,
        backgroundColor: Colors.amber[100],
      ),
      body: GridView(
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        children: [
          myBox(1),
          myBox(2),
          myBox(3),
          myBox(4),
          myBox(5),
          myBox(6),
          myBox(7),
          myBox(8),
        ],
      ),
    );
  }
}
