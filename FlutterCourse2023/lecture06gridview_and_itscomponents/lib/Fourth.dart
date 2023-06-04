import 'package:flutter/material.dart';

class Fourth extends StatefulWidget {
  const Fourth({super.key});

  @override
  State<Fourth> createState() => _FourthState();
}

class _FourthState extends State<Fourth> {
  var arraycolors = [
    Colors.teal,
    Colors.red,
    Colors.green,
    Colors.black,
    Colors.orange,
    Colors.yellow
  ];
  @override
  Widget build(BuildContext context) {
    // *** Circle avatar ***
    return Scaffold(
        body: ListView.builder(
      itemBuilder: (context, index) {
        return ListTile(
          leading: CircleAvatar(
            backgroundColor: arraycolors[index],
          ),
          title: Text("Warisha"),
          subtitle: Text("depend karta hai  ..."),
          trailing: Icon(Icons.abc_rounded),
        );
      },
      itemCount: arraycolors.length,
    ));
  }
}
