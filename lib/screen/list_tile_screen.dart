import 'package:flutter/material.dart';
import 'package:flutter_application/common/listtile/listtile_common.dart';

class ListTileScreen extends StatelessWidget {
  const ListTileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List Tile'),
        backgroundColor: Colors.amber[100],
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [for (int i = 0; i < 20; i++) CommonListTile(index: i)],
        ),
      ),
    );
  }
}
