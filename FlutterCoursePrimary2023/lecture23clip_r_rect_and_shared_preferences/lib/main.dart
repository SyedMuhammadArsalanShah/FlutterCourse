import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    reload();
  }

  var wacontroller = TextEditingController();

  var getres = "";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Center(
              child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), bottomRight: Radius.circular(20)),
            child: Image.asset(
              "assets/images/pic01.jpeg",
              width: 100,
              height: 100,
              fit: BoxFit.fill,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: wacontroller,
            ),
          ),
          ElevatedButton(
              onPressed: () async {
                var namewt = wacontroller.text.toString();

                final SharedPreferences pref =
                    await SharedPreferences.getInstance();

                pref.setString("name", namewt);
              },
              child: Text("Save")),
          Text("${getres}"),
        ],
      ))),
    );
  }

  void reload() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();

    var getname = pref.getString("name");

    // getres=getname!;
    // getres=getname !=null ? getname :"value N/A";
    getres = getname ?? "value n/a";

    setState(() {});
  }
}
