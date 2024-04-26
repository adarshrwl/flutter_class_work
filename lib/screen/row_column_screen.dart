import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class RowColumn extends StatelessWidget {
  const RowColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Rows and Column"),
        backgroundColor: const Color.fromARGB(255, 170, 217, 255),
        elevation: 0,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Row(
            children: [
              Flexible(
                fit: FlexFit.tight,
                child: Container(
                  alignment: Alignment.center,
                  color: Colors.blue,
                  height: 80,
                  child: const Text("Container 1"),
                ),
              ),
              Flexible(
                fit: FlexFit.tight,
                child: Container(
                  alignment: Alignment.center,
                  color: Colors.red,
                  height: 80,
                  child: const Text("Container 2"),
                ),
              ),
              Flexible(
                fit: FlexFit.tight,
                child: Container(
                  alignment: Alignment.center,
                  color: Colors.blue,
                  height: 80,
                  child: const Text("Container 3"),
                ),
              ),
            ],
          ),
          Flexible(
            fit: FlexFit.tight,
            child: Container(
              alignment: Alignment.center,
              color: Colors.purple,
              width: double.infinity,
              child: const Text("Container 1"),
            ),
          ),
          Flexible(
            fit: FlexFit.tight,
            child: Container(
              color: Colors.blue,
              alignment: Alignment.center,
              width: double.infinity,
              child: const Text("Container 2"),
            ),
          ),
          Flexible(
            fit: FlexFit.tight,
            child: Container(
              color: Colors.purple,
              alignment: Alignment.center,
              width: double.infinity,
              child: const Text("Container 3"),
            ),
          ),
        ],
      ),
    );
  }
}
