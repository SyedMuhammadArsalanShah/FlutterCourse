import 'ReadScreen.dart';
import 'services/Db_helper.dart';
import 'package:flutter/material.dart';

import 'CreateScreen.dart';

class DatabaseScr extends StatefulWidget {
  const DatabaseScr({super.key});

  @override
  State<DatabaseScr> createState() => _DatabaseScrState();
}

class _DatabaseScrState extends State<DatabaseScr> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
                onPressed: () async {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CreateScreen(),
                      ));
                  // await Db_helper.instance
                  //     .insertRecord({Db_helper.dt_name: "Arsalan Shah"});
                },
                child: Text("Create")),
            ElevatedButton(
                onPressed: () async {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ReadScreen(),
                      ));

                  var query = await Db_helper.instance.queryDatabase();
                  print(query);
                },
                child: Text("Read")),
            ElevatedButton(
                onPressed: () async {
                  await Db_helper.instance.updateRecord({
                    Db_helper.dt_id: 2,
                    Db_helper.dt_name: "SMAS",
                  });
                },
                child: Text("Update")),
            ElevatedButton(
                onPressed: () {
                  // for (int i = 1; i < 38; i++) {
                  //   Db_helper.instance.deleteRecord(i);
                  // }
                  Db_helper.instance.deleteRecord(1);
                },
                child: Text("Delete")),
          ],
        ),
      ),
    );
  }
}
