import 'package:flutter/material.dart';
import 'package:flutter_application/common/listtile/student_detail_common.dart';
import 'package:flutter_application/model/student_detail.dart';

class StudentDetail extends StatefulWidget {
  const StudentDetail({super.key});

  @override
  State<StudentDetail> createState() => _StudentDetalState();
}

class _StudentDetalState extends State<StudentDetail> {
  List<StudentDetailModel> studentDetailsList = [];

  StudentDetailModel? studentDetailModel;
  String? firstName;
  String? lastName;
  String? address;
  int? count;
  final myKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Student Detail",
        ),
        backgroundColor: Colors.purple[200],
        centerTitle: true,
        elevation: 0,
      ),
      backgroundColor: Colors.amber[100],
      body: Form(
        key: myKey,
        child: Column(
          children: [
            const SizedBox(
              height: 8,
            ),
            TextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Enter First Name';
                  }
                  return null;
                },
                onChanged: (value) {
                  firstName = value;
                },
                decoration: const InputDecoration(
                    labelText: ("Enter First Name"),
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red)))),
            const SizedBox(
              height: 8,
            ),
            TextFormField(
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Enter Last Name';
                }
                return null;
              },
              onChanged: (value) {
                lastName = value;
              },
              decoration: const InputDecoration(
                  labelText: ("Enter Last Name"),
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red))),
            ),
            const SizedBox(
              height: 8,
            ),
            TextFormField(
              onChanged: (value) {
                address = value;
              },
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Enter Address';
                }
                return null;
              },
              decoration: const InputDecoration(
                  labelText: ("Enter Address"),
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red))),
            ),
            const SizedBox(
              height: 8,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  if (myKey.currentState!.validate()) {
                    setState(() {
                      studentDetailsList.add(
                        StudentDetailModel(
                          fName: firstName,
                          lName: lastName,
                          address: address,
                        ),
                      );
                    });
                  }
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      const Color.fromARGB(255, 156, 210, 255)),
                ),
                child: const Text(
                  "Save",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    for (int i = 0; i < studentDetailsList.length; i++) ...{
                      StudentDetailDart(
                          fName: studentDetailsList[i].fName,
                          lName: studentDetailsList[i].lName,
                          address: studentDetailsList[i].address)
                    }
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
