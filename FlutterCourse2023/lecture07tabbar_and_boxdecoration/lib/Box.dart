import 'package:flutter/material.dart';

import 'Tabscr.dart';

class Box extends StatefulWidget {
  const Box({super.key});

  @override
  State<Box> createState() => _BoxState();
}

class _BoxState extends State<Box> {
  // *** Box Decoration ***
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.blue[900],
      child: Center(
          child: InkWell(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Tabscr()));
        },
        child: Container(
          width: 300,
          height: 300,
          child: Center(child: Text("Box Decoration")),
          decoration: BoxDecoration(
              color: Colors.blue,
              // borderRadius: BorderRadius.only(
              //     topLeft: Radius.circular(21), bottomRight: Radius.circular(21)),

              // borderRadius: BorderRadius.circular(20),
              border: Border.all(width: 2, color: Colors.white),
              boxShadow: [
                BoxShadow(
                  blurRadius: 21,
                  color: const Color.fromARGB(255, 113, 179, 233),
                  spreadRadius: 10,
                )
              ],
              shape: BoxShape.circle),
        ),
      )),
    ));
  }
}
