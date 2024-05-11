import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

int? first;
int? second;
int result = 0;
const _mybox = SizedBox(
  height: 8,
);
final myKey = GlobalKey<FormState>();

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: Form(
        key: myKey,
        child: Column(
          children: [
            _mybox,
            TextFormField(
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter first Number',
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green)),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red),
                  )),
            ),
            _mybox,
            TextFormField(
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter second Number',
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green)),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red),
                  )),
            ),
            _mybox,
            ElevatedButton(onPressed: () {}, child: const Text("Add")),
          ],
        ),
      ),
    );
  }
}
