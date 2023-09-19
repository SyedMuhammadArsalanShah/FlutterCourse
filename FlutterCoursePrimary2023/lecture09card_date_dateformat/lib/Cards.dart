import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Cards extends StatefulWidget {
  const Cards({super.key});

  @override
  State<Cards> createState() => _CardsState();
}

class _CardsState extends State<Cards> {
  var time = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: SingleChildScrollView(
      child: Column(
        children: [
          Center(
            child: Card(
              shadowColor: Colors.green,
              elevation: 23,
              child: Text(
                  "current time  By Date Class : ${time.hour}: ${time.minute}"),
            ),
          ),
          Card(
            child: ListTile(
              title: Text(
                "DateFormat by Package    ${DateFormat('jms').format(time)}",
                style: TextStyle(color: Colors.white),
              ),
            ),
            color: Colors.green,
          ),
          Card(
            child: ListTile(
              title: Text("Codesinsider.com"),
            ),
            elevation: 12,
            shadowColor: Colors.green,
          ),
          Card(
            child: ListTile(
              title: Text("Codesinsider.com"),
            ),
            elevation: 8,
            shadowColor: Colors.green,
            shape:
                BeveledRectangleBorder(borderRadius: BorderRadius.circular(15)),
          ),
          Card(
            child: ListTile(
              //leading: Icon(Icons.music_note),
              title: Text("Codesinsider.com"),
            ),
            elevation: 8,
            shadowColor: Colors.green,
            margin: EdgeInsets.all(20),
          ),
          Card(
            child: ListTile(
              title: Text("Codesinsider.com"),
            ),
            elevation: 8,
            shadowColor: Colors.green,
            margin: EdgeInsets.all(20),
            shape: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Colors.amber, width: 3)),
          ),
          Container(
            height: 200,
            width: 200,
            child: Card(
              child: ListTile(
                title: Text("Codesinsider.com"),
              ),
              elevation: 8,
              shadowColor: Colors.green,
              margin: EdgeInsets.all(20),
            ),
          ),
          Card(
            child: Container(
              height: 160,
              width: 160,
              child: Center(
                child: ListTile(
                  title: Text("Codesinsider.com"),
                ),
              ),
            ),
            elevation: 8,
            shadowColor: Colors.green,
            margin: EdgeInsets.all(20),
            shape: CircleBorder(
              side: BorderSide(width: 1, color: Colors.white),
            ),
          )
        ],
      ),
    )));
  }
}
