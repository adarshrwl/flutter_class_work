import 'package:flutter/material.dart';
import 'package:flutter_application/model/circle_model.dart';

class AreaO extends StatefulWidget {
  const AreaO({Key? key}) : super(key: key);

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
      body: Form(
        key: myKey,
        child: Column(
          children: [
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Enter  Amount',
              ),
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
                setState(() {
                  circleModel = CircleModel(radius: radius!);
                  area = circleModel?.calcCircle();
                });
              },
              child: const Text("Calculate"),
            ),
            Text("Area of Circle is $area")
          ],
        ),
      ),
    );
  }
}
