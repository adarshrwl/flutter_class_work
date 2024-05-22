import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

class CalculatorPractice extends StatefulWidget {
  const CalculatorPractice({super.key});

  @override
  State<CalculatorPractice> createState() => _CalculatorPracticeState();
}

class _CalculatorPracticeState extends State<CalculatorPractice> {
  final TextEditingController _myController = TextEditingController();
  static const mybox = SizedBox(
    height: 8,
  );
  final List<String> lstOperatorNumber = [
    "C",
    "*",
    "/",
    "<-",
    "7",
    "8",
    "9",
    "-",
    "4",
    "5",
    "6",
    "+",
    "1",
    "2",
    "3",
    "*",
    "/",
    "0",
    ".",
    "="
  ];
  String operator = "";
  int noOfButtons = 4;
  final List<String> lstOperator = ["+", "-", "*", "/"];
  int first = 0;
  int second = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Calculator Practice"),
        centerTitle: true,
        backgroundColor: Colors.amber[100],
        elevation: 0,
      ),
      body: Column(
        children: [
          mybox,
          TextFormField(
            textAlign: TextAlign.end,
            maxLength: 10,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
                hintText: "0", border: OutlineInputBorder()),
            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
          ),
          mybox,
          Expanded(
            child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    crossAxisSpacing: 10.0,
                    mainAxisSpacing: 10.0),
                itemCount: lstOperatorNumber.length,
                itemBuilder: (context, index) {
                  return ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      lstOperatorNumber[index],
                      style: const TextStyle(fontSize: 30),
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
