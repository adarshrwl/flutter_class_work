import 'package:flutter/material.dart';

Widget myBox(int index) {
  return Container(
    margin: const EdgeInsets.all(12),
    alignment: Alignment.center,
    decoration: BoxDecoration(
        color: const Color.fromARGB(255, 244, 86, 74),
        borderRadius: BorderRadius.circular(30)),
    child: Text('$index'),
  );
}

Widget myButton(int index) {
  return Container(
    decoration: BoxDecoration(
      color: Color.fromARGB(255, 255, 255, 255),
      borderRadius: BorderRadius.circular(30),
    ),
    child: ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        backgroundColor: const Color.fromARGB(255, 255, 228, 146),
      ),
      child: const Text("1"),
    ),
  );
}
