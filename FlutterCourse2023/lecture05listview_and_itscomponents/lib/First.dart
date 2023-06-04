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
        // *** listview  static
        body: ListView(
      children: [
        Text("warisha"),
        Text("warisha"),
        Text("warisha"),
        Text("Tuaha"),
        Text("warisha"),
        Text("warisha"),
        Text("warisha"),
        Text("warisha"),
        Text("warisha"),
        Text("Zara"),
        Text("warisha"),
        Text("warisha"),
        Text("warisha"),
        Text("Ali"),
      ],
      scrollDirection: Axis.horizontal,
      reverse: true,
    ));
  }
}
