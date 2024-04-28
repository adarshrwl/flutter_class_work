import 'package:flutter/material.dart';

class StudentDetailDart extends StatelessWidget {
  final String? fName;
  final String? lName;
  final String? address;
  const StudentDetailDart({
    super.key,
    required this.fName,
    required this.lName,
    required this.address,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(child: Image.asset('assets/images/image3.jpeg')),
      title: Text('$fName'),
      subtitle: Text('$lName'),
      trailing: Text('$address'),
    );
  }
}
