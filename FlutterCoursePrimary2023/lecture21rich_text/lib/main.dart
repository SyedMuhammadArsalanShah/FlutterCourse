import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: RichText(
        text: TextSpan(
          text: "",
          style: TextStyle(fontSize: 21, color: Colors.black87),
          children: <TextSpan>[
            TextSpan(
              text: 'Warisha',
              style: TextStyle(color: Colors.indigo[900], fontSize: 30),
            ),
            TextSpan(text: ' Aslam'),
          ],
        ),
      ),
    ));
  }
}
