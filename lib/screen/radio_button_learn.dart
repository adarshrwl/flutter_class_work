
import 'package:flutter/material.dart';

class RadioButtonTry extends StatefulWidget {
  const RadioButtonTry({super.key});

  @override
  State<RadioButtonTry> createState() => _RadioButtonTryState();
}

class _RadioButtonTryState extends State<RadioButtonTry> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber[100],
        title: const Text("Radio Button Try",style: TextStyle(
          color: Colors.black12,fontWeight: FontWeight.bold
        ),),
      ),
    );
  }
}
