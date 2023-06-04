import 'package:flutter/material.dart';

import 'Fourth.dart';

class First extends StatefulWidget {
  const First({Key? key}) : super(key: key);

  @override
  State<First> createState() => _FirstState();
}

class _FirstState extends State<First> {
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

        // *** GridView builder ***

        body: GridView.builder(
      itemBuilder: (context, index) {
        return InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Fourth()));
            },
            child: Container(
              color: arraycolors[index],
            ));
      },
      gridDelegate:
          // for count
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      // for size

      //  SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 100
      // ),
      itemCount: arraycolors.length,
    ));
  }
}
