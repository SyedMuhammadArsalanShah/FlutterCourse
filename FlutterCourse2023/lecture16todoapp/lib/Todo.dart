import 'package:flutter/material.dart';

class Todo extends StatefulWidget {
  const Todo({super.key});

  @override
  State<Todo> createState() => _TodoState();
}

class _TodoState extends State<Todo> {
  List<dynamic> students = [1, 2, 3];
  var output = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Todo App"),
      ),
      body: ListView.builder(
          itemCount: students.length,
          itemBuilder: (context, index) {
            return ListTile(
              tileColor: Colors.amber,
              title: Text("${students[index]}"),
              trailing: Container(
                width: 70,
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          students.removeAt(index);
                        });
                      },
                      child: Icon(Icons.delete),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                title: Text("Update your task"),
                                content: TextField(
                                  onChanged: (value) {
                                    output = value;
                                  },
                                ),
                                actions: [
                                  ElevatedButton(
                                      onPressed: () {
                                        setState(() {
                                          students.replaceRange(
                                              index, index + 1, {output});
                                        });
                                        Navigator.of(context).pop();
                                      },
                                      child: Text("Update"))
                                ],
                              );
                            });
                      },
                      child: Icon(Icons.edit),
                    ),
                  ],
                ),
              ),
            );
          }),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: Text("Add your task"),
                    content: TextField(
                      onChanged: (value) {
                        output = value;
                      },
                    ),
                    actions: [
                      ElevatedButton(
                          onPressed: () {
                            setState(() {
                              students.add(output);
                            });
                            Navigator.of(context).pop();
                          },
                          child: Text("Submit"))
                    ],
                  );
                });
          },
          child: Icon(Icons.add)),
    );
  }
}
