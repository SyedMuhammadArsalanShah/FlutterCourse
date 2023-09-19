import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Third extends StatefulWidget {
  const Third({Key? key}) : super(key: key);

  @override
  State<Third> createState() => _ThirdState();
}

class _ThirdState extends State<Third> {
  var students = [
    "warisha aslam ",
    "muhammad taha",
    "kinza",
    "talha ",
    "Daniyal ",
    "Anas ",
    "atif"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // *** Single Child ScrollView and padding ***

        body: ListView.separated(
            itemBuilder: ((context, index) {
              return ListTile(
                onTap: ((() {
                  print(index);
                })),
                leading: CircleAvatar(
                  backgroundColor: Colors.teal,
                  child: Text(index.toString()),
                ),
                title: Text(students[index]),
                subtitle: Text("Busy "),
                trailing: Icon(Icons.add),
              );
            }),
            separatorBuilder: ((context, index) {
              return Divider(
                height: 50,
                thickness: 2,
              );
            }),
            itemCount: students.length));
  }
}
