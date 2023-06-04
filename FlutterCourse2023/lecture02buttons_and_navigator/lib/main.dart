import 'package:flutter/material.dart';

import 'Allbuttons.dart';
import 'Home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Home(),

        // !!! if you want to see all buttons  UnComment below code and (comment home page) !!!
        // body: Allbuttons(),
      ),
    );
  }
}
