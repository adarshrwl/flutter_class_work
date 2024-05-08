import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          title: const Text("Profile Screen"),
          centerTitle: true,
          backgroundColor: Colors.blue[100],
        ),
        body: GestureDetector(
          onTap: () {
            print("Hello");
          },
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                height: screenHeight * .4,
                width: screenWidth,
                color: Colors.amber[100],
                child: const Text("First Container"),
              ),
              GestureDetector(
                onDoubleTap: () {
                  print("This is double tapped");
                },
                child: Positioned(
                  top: 1,
                  right: 1,
                  child: Container(
                    height: 100,
                    width: 100,
                    color: Colors.green,
                    child: const Text("Second Container"),
                  ),
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
          ),
        ));
  }
}
