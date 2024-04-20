import 'package:flutter/material.dart';
import 'package:flutter_application/model/add_two_numbers_model.dart';

class AddTwoNums extends StatefulWidget {
  const AddTwoNums({super.key});

  @override
  State<AddTwoNums> createState() => _ArithmeticScreenState();
}

class _ArithmeticScreenState extends State<AddTwoNums> {
// Delcare variables
  int? first;
  int? second;
  int result = 0;

  AddTwoNumbersModel? addTwoNumsModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[100],
      appBar: AppBar(
        title: const Text("Arithmetic"),
        backgroundColor: Colors.green,
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            TextField(
              onChanged: (value) {
                first = int.parse(value);
              },
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter First No',
              ),
            ),
            const SizedBox(height: 8),
            TextField(
              onChanged: (value) {
                second = int.parse(value);
              },
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter Second No',
              ),
            ),
            const SizedBox(height: 8),
            // Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    addTwoNumsModel =
                        AddTwoNumbersModel(first: first, second: second);
                    result = addTwoNumsModel!.add();
                  });
                },
                child: const Text(
                  'Add',
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Sum is : $result',
              style: const TextStyle(
                fontSize: 30,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
