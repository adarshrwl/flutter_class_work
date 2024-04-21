import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class FlutterLayout extends StatelessWidget {
  const FlutterLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [Icon(Icons.call), SafeArea(child: Text("Call"))],
              ),
              Column(
                children: [Icon(Icons.route), SafeArea(child: Text("Route"))],
              ),
              Column(
                children: [Icon(Icons.share), SafeArea(child: Text("Share"))],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
