import 'package:flutter/material.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Text("maryam ki information ayegi yahan "),
        ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text("Back"))
      ],
    ));
  }
}
//  