import 'package:flutter/material.dart';
import 'package:flutter_application/model/simple_intrest_model.dart';

class SimpleIntrest extends StatefulWidget {
  const SimpleIntrest({super.key});

  @override
  State<SimpleIntrest> createState() => _ArithmeticScreenState();
}

class _ArithmeticScreenState extends State<SimpleIntrest> {
  //Global Key for which to update the line
  final myKey = GlobalKey<FormState>();
// Delcare variables
  double? principleAmount;
  double? time;
  double? rate;
  double? result = 0;

  SimpleIntrestModel? simpleIntrestModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[100],
      appBar: AppBar(
        title: const Text("Arithmetic"),
        backgroundColor: Colors.green,
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Form(
          key: myKey,
          child: Column(
            children: [
              TextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Enter Principle Amount';
                  }
                  return null;
                },
                onChanged: (value) {
                  principleAmount = double.parse(value) as double?;
                },
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter Principle Amount',
                ),
              ),
              const SizedBox(height: 8),
              TextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Enter  time';
                  }
                  return null;
                },
                onChanged: (value) {
                  time = double.parse(value) as double?;
                },
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter Time',
                ),
              ),
              const SizedBox(height: 8),
              const SizedBox(height: 8),
              TextField(
                onChanged: (value) {
                  rate = double.parse(value) as double?;
                },
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter Rate',
                ),
              ),
              const SizedBox(height: 8),
              // Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    if (myKey.currentState!.validate()) {
                      setState(() {
                        simpleIntrestModel = SimpleIntrestModel(
                            principle: principleAmount, time: time, rate: rate);
                        result = simpleIntrestModel!.calcInterest();
                      });
                    }
                  },
                  child: const Text(
                    'Calculate',
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 8),

              // Display informatuion
              Text(
                'Simple Intrest is : $result',
                style: const TextStyle(
                  fontSize: 30,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
