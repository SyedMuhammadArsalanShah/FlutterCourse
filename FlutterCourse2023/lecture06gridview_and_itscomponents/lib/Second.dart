import 'package:flutter/material.dart';

class Second extends StatefulWidget {
  const Second({Key? key}) : super(key: key);

  @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {
  var arraycolors = [
    Colors.teal,
    Colors.red,
    Colors.green,
    Colors.black,
    Colors.orange,
    Colors.yellow
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ***  GridView.count  ***
      body: GridView.count(
        crossAxisCount: 3,
        mainAxisSpacing: 11,
        crossAxisSpacing: 11,
        children: [
          Container(
            color: arraycolors[0],
          ),
          Container(
            color: arraycolors[1],
          ),
          Container(
            color: arraycolors[2],
          ),
          Container(
            color: arraycolors[3],
          ),
          Container(
            color: arraycolors[4],
          ),
          Container(
            width: 100,
            color: arraycolors[5],
          ),
        ],
      ),
    );
  }
}
