import 'package:flutter/material.dart';

class Second extends StatefulWidget {
  const Second({super.key});

  @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          listtilecust("tuaha", "app developer"),
          listtilecust("warisha", "app developer"),
          listtilecust("zaid", "app developer"),
          listtilecust("fatimah", "ios developer"),
        ],
      ),
    );
  }
}

Widget listtilecust(var title, var subtitle) {
  return ListTile(
    leading: CircleAvatar(
      backgroundColor: Colors.teal,
      radius: 20,
    ),
    title: Text(title),
    subtitle: Text(subtitle),
    trailing: Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text("2:47PM"),
        CircleAvatar(
          backgroundColor: Colors.indigo[900],
          radius: 10,
          child: Text(
            "56",
            style: TextStyle(fontSize: 10),
          ),
        ),
      ],
    ),
  );
}
