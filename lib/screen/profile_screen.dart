import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Profile Screen"),
          centerTitle: true,
          backgroundColor: Colors.blue[100],
        ),
        body: Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              height: 400,
              width: double.infinity,
              color: Colors.amber[100],
              child: const Text("First Container"),
            ),
            Positioned(
              top: 1,
              right: 1,
              child: Container(
                height: 100,
                width: 100,
                color: Colors.green,
                child: const Text("Second Container"),
              ),
            ),
            Positioned(
                bottom: -30,
                left: 400 / 2 - 50,
                child: Container(
                  height: 100,
                  width: 100,
                  color: Colors.blue[100],
                  child: const Text("Bottom left"),
                ))
          ],
        ));
  }
}
