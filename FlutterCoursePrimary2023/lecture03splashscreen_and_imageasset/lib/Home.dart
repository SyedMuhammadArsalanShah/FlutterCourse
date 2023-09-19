import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Container(
        color: Colors.brown[900],
        child: Center(
          child: Text(
            "Quran ",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
      )),
    );
  }
}
