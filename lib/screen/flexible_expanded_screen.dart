import 'package:flutter/cupertino.dart';
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
          Flexible(
            fit: FlexFit.loose,
            child: Container(
                alignment: Alignment.center,
                color: Colors.amber[100],
                height: 400,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text("Hello World"),
                        duration: Duration(seconds: 3),
                        backgroundColor: Colors.green,
                        behavior: SnackBarBehavior.floating,
                      ),
                    );
                  },
                  child: const Text("Container 1"),
                )),
          ),
          Expanded(
            child: Container(
                alignment: Alignment.center,
                color: Colors.redAccent,
                height: 200,
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text("Hello World"),
                          duration: Duration(seconds: 3),
                          backgroundColor: Colors.blue,
                          behavior: SnackBarBehavior.floating,
                        ),
                      );
                    },
                    child: const Text("Container 2"))),
          )
        ],
      ),
    );
  }
}
