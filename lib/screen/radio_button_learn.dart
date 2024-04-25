import 'package:flutter/material.dart';

class RadioButtonTry extends StatefulWidget {
  const RadioButtonTry({super.key});

  @override
  State<RadioButtonTry> createState() => _RadioButtonTryState();
}

class _RadioButtonTryState extends State<RadioButtonTry> {
  int value = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber[100],
        title: const Text(
          "Radio Button Try",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        elevation: 0,
        centerTitle: true,
      ),
      body: Column(
        children: [
          TextFormField(
            decoration: const InputDecoration(border: OutlineInputBorder()),
            keyboardType: TextInputType.number,
            
          ),
          const SizedBox(
            height: 9,
          ),
          TextFormField(
            decoration: const InputDecoration(border: OutlineInputBorder()),
            keyboardType: TextInputType.number,
          ),
          Row(
            children: [
              Radio(
                  value: 1,
                  groupValue: 1,
                  onChanged: (value) {
                    value = value;
                  }),
              const Text("Number 1")
            ],
          ),
          Row(
            children: [
              Radio(
                  value: 2,
                  groupValue: 1,
                  onChanged: (value) {
                    value = value;
                  }),
              const Text("Number 2")
            ],
          ),
          Row(
            children: [
              Radio(
                  value: 3,
                  groupValue: 1,
                  onChanged: (value) {
                    value = value;
                  }),
              const Text("Number 3")
            ],
          ),
          Row(
            children: [
              Radio(
                  value: 4,
                  groupValue: 1,
                  onChanged: (value) {
                    value = value;
                  }),
              const Text("Number 4")
            ],
          )
        ],
      ),
    );
  }
}
