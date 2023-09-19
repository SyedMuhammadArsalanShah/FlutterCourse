import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Third extends StatefulWidget {
  const Third({Key? key}) : super(key: key);

  @override
  State<Third> createState() => _ThirdState();
}

class _ThirdState extends State<Third> {
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
      // *** GridView extent ***

      body: GridView.extent(
        maxCrossAxisExtent: 100,
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
