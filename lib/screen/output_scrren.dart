import 'package:flutter/material.dart';

class OutputScreen extends StatelessWidget {
  final String fullname;
  const OutputScreen({
    super.key,
    required this.fullname,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Hello $fullname',
          style: const TextStyle(fontSize: 20, color: Colors.black),
        ),
      ),
    );
  }
}
