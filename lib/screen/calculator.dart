import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Calculator App",
        ),
        centerTitle: true,
        backgroundColor: Colors.blue[200],
      ),
      // body: GridView.builder(
      //   gridDelegate:
      //       SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 4),
      // ),
    );
  }
}
