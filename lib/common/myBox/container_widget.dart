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
