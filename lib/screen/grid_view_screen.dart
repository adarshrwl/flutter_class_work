import 'package:flutter/material.dart';
import 'package:flutter_application/common/myBox/container_widget.dart';

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
          myButton(1),
          myButton(1),
          myButton(1),
          myButton(1),
        ],
      ),
    );
  }
}
