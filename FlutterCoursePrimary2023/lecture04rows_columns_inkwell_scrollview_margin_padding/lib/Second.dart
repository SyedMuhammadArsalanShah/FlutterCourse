import 'package:flutter/material.dart';

import 'Third.dart';

class Second extends StatefulWidget {
  const Second({Key? key}) : super(key: key);

  @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // *** Column widget ***
      body: Column(
        // vertical
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        // horizontal
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("Warisha"),
          Text("areeb"),
          Text("aamna"),
          Text("fizza"),
          Text("sara"),
          Text("ahmed"),
          Text("osama"),
          Text("tuaha"),
          Text("wahaj"),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Third()));
              },
              child: Text("Rows & Columns with Scrollview"))
        ],
      ),
    );
  }
}
