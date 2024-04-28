import 'package:flutter/material.dart';

class CommonListTile extends StatelessWidget {
  final int index;
  const CommonListTile({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(Icons.person),
      title: Text('Title ${index + 1}'),
      subtitle: const Text("Maitidevi Kathmandu"),
      trailing: const Icon(Icons.call),
    );
  }
}
