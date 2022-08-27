import 'package:flutter/material.dart';

import 'home.dart';

void main() {
  runApp(MyApp());
}

//text widget

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(body: Text("Maryam khan ")),
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
//         body: Column(children: [
//           Text("maryam"),
//           SizedBox(
//             height: 60,
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
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(
//           title: Center(child: Text("Login Page")),
//         ),
//         body: Center(
//           child: Column(children: [
//             SizedBox(height: 50),
//             Container(
//               width: 200,
//               child: TextField(),
//             ),
//             Container(
//               width: 200,
//               child: TextField(),
//             ),
//             SizedBox(
//               height: 30,
//             ),
//             ElevatedButton(onPressed: () {}, child: Text("login"))
//           ]),
//         ),
//       ),
//     );
//   }
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         backgroundColor: Colors.teal,
//         appBar: AppBar(
//           title: Text(
//             "margin concept ",
//             style: TextStyle(color: Colors.teal),
//           ),
//           backgroundColor: Colors.white,
//         ),
//         body: Center(
//           child: Container(
//             child: Text(
//               "Welcome my class",
//               style: TextStyle(color: Colors.teal),
//             ),
//             width: 300,
//             height: 100,
//             margin: EdgeInsets.all(20),
//             padding: EdgeInsets.all(20),
//             color: Color(0xff0a0101),
//           ),
//         ),
//       ),
//     );
//   }
// }

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(body: Home()),
    );
  }
}
