import 'package:flutter/material.dart';
import 'package:lecture06gridview_and_itscomponents/Fourth.dart';

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
                        "GridView builder",
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
                        "GridView count",
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
                        "GridView Extent",
                        style: TextStyle(color: Colors.white),
                      ),
                    )),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Fourth()));
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
                        " Circle Avatar ",
                        style: TextStyle(color: Colors.white),
                      ),
                    )),
              ),
            ]),
      ),
    );
  }
}
