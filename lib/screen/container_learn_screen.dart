import 'package:flutter/material.dart';

class ContainerScreen extends StatelessWidget {
  const ContainerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
            width: 200,
            height: 200,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.amber[200],
                border: Border.all(
                  color: Colors.black,
                  width: 2,
                )),
            child: const Text(
              "I am a container",
            ),
          ),
        ),
      ),
    );
  }
}
