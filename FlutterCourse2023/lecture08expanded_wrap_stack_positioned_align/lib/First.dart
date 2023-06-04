import 'package:flutter/material.dart';

class First extends StatefulWidget {
  const First({Key? key}) : super(key: key);

  @override
  State<First> createState() => _FirstState();
}

class _FirstState extends State<First> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // *** Expanded ***

      body: Row(
        children: [
          Expanded(
              flex: 1,
              child: Container(
                width: 100,
                height: 100,
                color: Colors.blue,
              )),
          Expanded(
              flex: 2,
              child: Container(
                width: 100,
                height: 100,
                color: Colors.green,
              )),
          Expanded(
              flex: 3,
              child: Container(
                width: 100,
                height: 100,
                color: Colors.red,
              )),
          Expanded(
              flex: 10,
              child: Container(
                width: 100,
                height: 100,
                color: Colors.teal,
              ))
        ],
      ),
    );
  }
}
