import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class FlexibleExpandedScreen extends StatelessWidget {
  const FlexibleExpandedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flexible Expanded Screen"),
        centerTitle: true,
        backgroundColor: Colors.yellow,
      ),
      body: Column(
        children: [
          Container(
            alignment: Alignment.center,
            color: Colors.amber[100],
            height: 600,
            width: double.infinity,
            child: const Text(
              "Container 1",
              style: TextStyle(color: Colors.black, fontSize: 30),
            ),
          ),
          Flexible(
            child: Container(
              alignment: Alignment.center,
              color: Colors.redAccent,
              height: 600,
              width: double.infinity,
              child: const Text(
                "Container 2",
                style: TextStyle(fontSize: 30),
              ),
            ),
          )
        ],
      ),
    );
  }
}
