import 'package:flutter/material.dart';

import 'First.dart';
import 'Second.dart';
import 'Third.dart';

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
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // *** InkWell Widget And margin and padding ***
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => First()));
                },
                child: Container(
                    // for outside use margin
                    margin: const EdgeInsets.all(8.0),
                    // for inside use margin
                    padding: const EdgeInsets.all(8.0),
                    color: Colors.indigo[900],
                    width: 300,
                    height: 300,
                    child: Center(
                      child: Text(
                        "Expanded ",
                        style: TextStyle(color: Colors.white),
                      ),
                    )),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Second()));
                },
                child: Container(
                    // for outside use margin
                    margin: const EdgeInsets.all(8.0),
                    // for inside use margin
                    padding: const EdgeInsets.all(8.0),
                    color: Colors.indigo[900],
                    width: 300,
                    height: 300,
                    child: Center(
                      child: Text(
                        "Wrap",
                        style: TextStyle(color: Colors.white),
                      ),
                    )),
              ),

              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Third()));
                },
                child: Container(
                    // for outside use margin
                    margin: const EdgeInsets.all(8.0),
                    // for inside use margin
                    padding: const EdgeInsets.all(8.0),
                    color: Colors.indigo[900],
                    width: 300,
                    height: 300,
                    child: Center(
                      child: Text(
                        "Stack Positioned and Align",
                        style: TextStyle(color: Colors.white),
                      ),
                    )),
              ),
            ]),
      ),
    );
  }
}
