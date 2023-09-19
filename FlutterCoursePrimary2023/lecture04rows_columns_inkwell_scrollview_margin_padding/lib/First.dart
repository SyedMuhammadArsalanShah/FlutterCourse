import 'package:flutter/material.dart';

import 'Third.dart';

class First extends StatefulWidget {
  const First({Key? key}) : super(key: key);

  @override
  State<First> createState() => _FirstState();
}

class _FirstState extends State<First> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // *** Row widget ***
      body: Row(
        // horizontal
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        // vertical
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
