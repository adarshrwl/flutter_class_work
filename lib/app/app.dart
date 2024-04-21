import 'package:flutter/material.dart';
import 'package:flutter_application/screen/circle_screen.dart';
import 'package:flutter_application/screen/dashboard_screen.dart';
import 'package:flutter_application/screen/hello_world_screen.dart';
import 'package:flutter_application/screen/rectangle_screen.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HelloWorldScreen(),
    );
  }
}
