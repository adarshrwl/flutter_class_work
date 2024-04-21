import 'package:flutter/material.dart';
import 'package:flutter_application/screen/add_two_nums_screen.dart';
import 'package:flutter_application/screen/circle_screen.dart';
import 'package:flutter_application/screen/rectangle_screen.dart';
import 'package:flutter_application/screen/simple_intrest_screen.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.green[100],
        appBar: AppBar(
          backgroundColor: Colors.amber[100],
          title: const Text("Dashboard"),
          centerTitle: true,
        ),
        body: Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const AddTwoNums()));
                  },
                  child: const Text("Arithmetic Screen"),
                ),
                const SizedBox(height: 8),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SimpleIntrest()));
                  },
                  child: const Text("Simple Interest"),
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const AreaO()));
                    },
                    child: const Text("Area of circle  Calculator")),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const RectangleArea()));
                    },
                    child: const Text("Area of Rectangle Calculator"))
              ],
            )));
  }
}
