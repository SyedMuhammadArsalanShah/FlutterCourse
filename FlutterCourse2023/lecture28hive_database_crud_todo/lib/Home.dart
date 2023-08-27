import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
// createData

  var titleController = TextEditingController();
  var descController = TextEditingController();

  var taskBox = Hive.box("taskBox");

  List<Map<String, dynamic>> showdata = [];
  createData(Map<String, dynamic> data) async {
    await taskBox.add(data);

    // to call read values

    readData();

    print("My Data Flutter Dvelopers ${taskBox.length}");
  }

// delete data
  deletedata(int? key) async {
    await taskBox.delete(key);
    readData();
  }

// update data

  updatedata(int? key, Map<String, dynamic> data) async {
    await taskBox.put(key, data);
    readData();
  }

  readData() async {
    var data = taskBox.keys.map((ind) {
      final items = taskBox.get(ind);
      return {"key": ind, "title": items["title"], "desc": items["desc"]};
    }).toList();

    setState(() {
      showdata = data.reversed.toList();

      print(showdata);
      print(showdata.length);
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    readData();
  }

  showformmodel(context, int? key) async {
    titleController.clear();
    descController.clear();

    if (key != null) {
      final item = showdata.firstWhere((index) => index["key"] == key);

      titleController.text = item["title"];
      descController.text = item["desc"];
    }

    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (context) {
        return Padding(
          padding: EdgeInsets.fromLTRB(
              32, 32, 32, MediaQuery.of(context).viewInsets.bottom),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: titleController,
                decoration: InputDecoration(hintText: "Enter Your Title "),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                controller: descController,
                decoration: InputDecoration(hintText: "Enter Your Description"),
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    var data = {
                      "title": titleController.text,
                      "desc": descController.text,
                    };

                    if (key == null) {
                      createData(data);
                    } else {
                      updatedata(key, data);
                    }
                    Navigator.pop(context);
                  },
                  child: key == null ? Text("Add Text") : Text("Update")),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showformmodel(context, null);
        },
        child: Icon(Icons.add),
      ),
      appBar: AppBar(
        title: Text("Hive Data Base"),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          var currentitems = showdata[index];
          return ListTile(
            title: Text(currentitems["title"]),
            subtitle: Text(currentitems["desc"]),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                    onPressed: () {
                      showformmodel(context, currentitems["key"]);
                    },
                    icon: Icon(Icons.edit_attributes_rounded)),
                IconButton(
                    onPressed: () {
                      deletedata(currentitems["key"]);
                    },
                    icon: Icon(Icons.delete_forever_rounded))
              ],
            ),
          );
        },
        itemCount: showdata.length,
      ),
    );
  }
}
