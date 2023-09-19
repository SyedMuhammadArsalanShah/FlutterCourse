import 'services/Db_helper.dart';
import 'package:flutter/material.dart';

class ReadScreen extends StatefulWidget {
  const ReadScreen({super.key});

  @override
  State<ReadScreen> createState() => _ReadScreenState();
}

class _ReadScreenState extends State<ReadScreen> {
  List<Map<String, dynamic>> datalist = [];

  void alldata() async {
    var data = await Db_helper.instance.queryDatabase();

    setState(() {
      datalist = data;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    alldata();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: ListTile(
              tileColor: Colors.indigo[900],
              textColor: Colors.white,
              title: Text("${datalist[index]["name"]}"),
            ),
          );
        },
        itemCount: datalist.length,
      ),
    );
  }
}
