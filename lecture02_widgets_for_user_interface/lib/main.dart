import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

//text widget

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(

//       home: Scaffold(body: Text("Maryam khan ")

//       ),
//     );
//   }
// }

//container

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: Container(
//           height: 200,
//           width: 200,
//           color: Colors.lightBlue,
//           child: Text("this is a container"),
//         ),
//       ),
//     );
//   }
// }

//column

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: Column(

//           children: [
//           Text("maryam"),
//           SizedBox(
//             height: 30,
//           ),
//           Text("Daniyal"),
//           SizedBox(
//             height: 30,
//           ),
//           Text("maaz"),
//           SizedBox(
//             height: 30,
//           ),
//           Text("hamza")
//         ]),
//       ),
//     );
//   }
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         body: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
//           Text("maryam"),
//           Text("Daniyal"),
//           Text("maaz"),
//           Text("hamza")
//         ]),
//       ),
//     );
//   }
// }

//login page
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Login Page")),
        ),
        body: Center(
          child: Column(children: [
            SizedBox(height: 50),
            Container(
              width: 200,
              child: TextField(),
            ),
            Container(
              width: 200,
              child: TextField(),
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(onPressed: () {}, child: Text("login"))
          ]),
        ),
      ),
    );
  }
}
