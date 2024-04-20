import 'package:flutter/material.dart';
import 'package:flutter_application/model/rectangle_model.dart';

class RectangleArea extends StatefulWidget {
  const RectangleArea({super.key});

  @override
  State<RectangleArea> createState() => _RectangleAreaState();
}

class _RectangleAreaState extends State<RectangleArea> {
  double? length;
  double? breadth;
  double? area;

  RectangleModel? rectangleModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[100],
      appBar: AppBar(
        backgroundColor: Colors.amber[100],
        title: const Text("Area of Rectangle Calculator"),
        elevation: 0,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Form(
          child: Column(
            children: [
              TextFormField(
                onChanged: (value) {
                  length = double.parse(value);
                },
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Input Length of the Rectangle"),
              ),
              const SizedBox(
                height: 8,
              ),
              TextFormField(
                onChanged: (value) {
                  breadth = double.parse(value);
                },
                decoration: const InputDecoration(
                    labelText: "Input Breadth of the Rectangle",
                    border: OutlineInputBorder()),
              ),
              const SizedBox(
                height: 8,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      rectangleModel =
                          RectangleModel(length: length, breadth: breadth);
                      area = rectangleModel?.calculateArea();
                    });
                  },
                  child: const Text("Calculate Area"),
                ),
              ),
              const SizedBox(height: 8),
              Text(
                "The total Area of Rectangle is $area",
                style: const TextStyle(fontSize: 20, color: Colors.red),
              )
            ],
          ),
        ),
      ),
    );
  }
}
