import 'package:flutter/material.dart';

class Second extends StatefulWidget {
  const Second({Key? key}) : super(key: key);

  @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {
  var students = [
    "warisha aslam ",
    "muhammad taha",
    "kinza",
    "talha ",
    "Daniyal ",
    "Anas ",
    "atif"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // *** ListView Builder ***
        body: ListView.builder(
      itemBuilder: ((context, index) {
        return Text(students[index]);
      }),
      itemCount: students.length,
      itemExtent: 100,
    ));
  }
}
