import 'package:flutter/material.dart';
import 'package:lecture02buttons_and_navigator/Nextpage.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

// *** Navigator.push with elevated button ***
class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext warisha) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: Text("Next Page "),
          onPressed: (() {
            Navigator.push(
                warisha, MaterialPageRoute(builder: (warisha) => Nextpage()));
          }),
        ),
      ),
    );
  }
}
