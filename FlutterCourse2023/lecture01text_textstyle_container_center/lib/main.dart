import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// *** Text Widget and Text Style ***

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
            child: Text(
          "Muhammad Tuaha ",
          style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.w900,
              color: Colors.deepPurple),
        )),
      ),
    );
  }
}

// *** Container Widget  and Center Widget Banner False  ***

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         body: Center(
//             child: Container(
//           width: 100,
//           height: 100,
//           color: Color.fromARGB(255, 20, 197, 179),
//           child: Center(child: Text("warisha aslam")),
//         )),
//       ),
//     );
//   }
// }
