import 'package:flutter/material.dart';

import 'package:flutter_application/model/circle_model.dart';

class AreaO extends StatefulWidget {
  const AreaO({super.key});

  @override
  State<AreaO> createState() => _AreaOState();
}

class _AreaOState extends State<AreaO> {
  CircleModel? circleModel;
  final myKey = GlobalKey<FormState>();
  double? radius;
  double? area;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Area of Circle"),
        backgroundColor: Colors.lightGreen,
        centerTitle: true,
      ),
      backgroundColor: Colors.yellow,
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Form(
          key: myKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextFormField(
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Enter  Amount',
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green),
                    )),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a principle amount';
                  }
                  return null;
                },
                onChanged: (value) {
                  setState(() {
                    radius = double.tryParse(value);
                  });
                },
              ),
              ElevatedButton(
                onPressed: () {
                  if (myKey.currentState!.validate()) {
                    setState(() {
                      circleModel = CircleModel(radius: radius!);
                      area = circleModel?.calcCircle();
                    });
                  }
                },
                style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                child: const Text("Calculate"),
              ),
              Center(
                  child: Text(
                "Area of Circle is $area",
                style: const TextStyle(fontSize: 16.0),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
