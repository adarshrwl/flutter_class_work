import 'package:flutter/material.dart';

class HelloWorldScreen extends StatelessWidget {
  const HelloWorldScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[100],
      appBar: AppBar(
        title: const Text('Use of TextSpan'),
        backgroundColor: Colors.red[100],
        centerTitle: true,
      ),
      body: Column(children: [
        RichText(
          textAlign: TextAlign.center,
          text: const TextSpan(
            text: 'Hello ',
            style: TextStyle(color: Colors.black),
            children: <TextSpan>[
              TextSpan(
                text: 'bold ',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 255, 0, 13),
                ),
              ),
              TextSpan(
                text: 'world!',
              ),
            ],
          ),
        ),
        RichText(
            text: const TextSpan(children: <TextSpan>[
          TextSpan(text: "My name is ", style: TextStyle(color: Colors.black)),
          TextSpan(
            text: "A",
            style: TextStyle(
              fontSize: 30,
              color: Colors.red,
            ),
          ),
          TextSpan(text: "darsh Rawal", style: TextStyle(color: Colors.black))
        ]))
      ]),
    );
  }
}
