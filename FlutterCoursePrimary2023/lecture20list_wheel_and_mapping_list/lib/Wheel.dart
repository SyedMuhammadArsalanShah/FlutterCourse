import 'package:flutter/material.dart';

class Wheel extends StatefulWidget {
  const Wheel({super.key});

  @override
  State<Wheel> createState() => _WheelState();
}

class _WheelState extends State<Wheel> {
  var arrlist = [
    {"name": "warisha aslam", "email": "w@gmail.com", "msg": "13"},
    {"name": "ali", "email": "w@gmail.com", "msg": "13"},
    {"name": "sara", "email": "w@gmail.com", "msg": "13"},
    {"name": "emad", "email": "w@gmail.com", "msg": "14"},
    {"name": "eman", "email": "w@gmail.com", "msg": "15"},
    {"name": "Taha", "email": "w@gmail.com", "msg": "12"},
    {"name": "Fatimah", "email": "wa@gmail.com", "msg": "3"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListWheelScrollView(
        itemExtent: 200,
        children: arrlist.map((value) {
          return ListTile(
            title: Text("${value["name"]}"),
            subtitle: Text("${value["email"]}"),
            trailing: CircleAvatar(
              backgroundColor: Colors.teal,
              child: Text("${value["msg"]}"),
            ),
          );
        }).toList(),
      ),
    ));
  }
}
