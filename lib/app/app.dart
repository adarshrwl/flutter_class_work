import 'package:flutter/material.dart';
import 'package:flutter_application/screen/circle_screen.dart';
import 'package:flutter_application/screen/col.dart';
import 'package:flutter_application/screen/container_learn_screen.dart';
import 'package:flutter_application/screen/dashboard_screen.dart';
import 'package:flutter_application/screen/flexible_expanded_screen.dart';
import 'package:flutter_application/screen/flutter_layout_screen.dart';
import 'package:flutter_application/screen/grid_view_screen.dart';
import 'package:flutter_application/screen/list_tile_screen.dart';
import 'package:flutter_application/screen/mathematical_screen.dart';
import 'package:flutter_application/screen/radio_button_learn.dart';
import 'package:flutter_application/screen/rectangle_screen.dart';
import 'package:flutter_application/screen/row_column_screen.dart';
import 'package:flutter_application/screen/student_detail_screen.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GridViewScreen(),
    );
  }
}
