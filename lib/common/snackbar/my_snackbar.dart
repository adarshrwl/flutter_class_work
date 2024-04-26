import 'package:flutter/material.dart';

showMySnackbar({
  required String messgae,
  required BuildContext context,
  Color? color,
}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(content: Text(messgae),
    backgroundColor: color?? Colors.green,
    duration: const Duration(seconds: 1),
    behavior: SnackBarBehavior.floating,
    )
  );
}
