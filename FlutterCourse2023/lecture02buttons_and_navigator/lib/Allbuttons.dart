import 'package:flutter/material.dart';

class Allbuttons extends StatelessWidget {
  const Allbuttons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body:

                // *** Text Button ***
                //     TextButton(
                //   child: Text("Warisha Aslam"),
                //   onPressed: () {
                //     print("flutter student ");
                //   },
                //   onLongPress: () {
                //     print("flutter student with long pressed");
                //   },
                // ),

                // *** Elevated Button ***
                //     ElevatedButton(
                //   child: Text("warisha aslam "),
                //   onPressed: () {
                //     print("flutter student ");
                //   },
                //   onLongPress: () {
                //     print("flutter student long ");
                //   },
                // ),

                // *** Outlined  Button ***

                OutlinedButton(
      child: Text("warisha aslam "),
      onPressed: () {
        print("flutter student ");
      },
      onLongPress: () {
        print("flutter student Long");
      },
    )));
  }
}
