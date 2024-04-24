import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Mathematical extends StatefulWidget {
  const Mathematical({super.key});

  @override
  State<Mathematical> createState() => _MathematicalState();
}

class _MathematicalState extends State<Mathematical> {
  int _value = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Adarsh Rawal"),
        centerTitle: true,
        backgroundColor: Colors.blue,
        elevation: 0,
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 8.0,
          ),
          TextFormField(
            decoration: const InputDecoration(
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red))),
          ),
          const SizedBox(
            height: 8,
          ),
          TextFormField(
            decoration: const InputDecoration(
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red))),
          ),
          const SizedBox(
            height: 8.0,
          ),
          Row(
            children: [
              Radio(
                  value: 1,
                  groupValue: _value,
                  onChanged: (value) {
                    setState(() {
                      _value = value!;
                    });
                  }),
              const SizedBox(height: 8),
              const Text("Addition")
            ],
          ),
          Row(
            children: [
              Radio(
                  value: 2,
                  groupValue: _value,
                  onChanged: (value) {
                    setState(() {
                      _value = value!;
                    });
                  }),
              const SizedBox(height: 8),
              const Text("Subtraction")
            ],
          ),
          Row(
            children: [
              Radio(
                  value: 3,
                  groupValue: _value,
                  onChanged: (value) {
                    setState(() {
                      _value = value!;
                    });
                  }),
              const SizedBox(height: 8),
              const Text("Multiplication")
            ],
          ),
          Row(
            children: [
              Radio(
                  value: 4,
                  groupValue: _value,
                  onChanged: (value) {
                    setState(() {
                      _value = value!;
                    });
                  }),
              const SizedBox(height: 8),
              const Text("Subtraction")
            ],
          ),
        ],
      ),
    );
  }
}
