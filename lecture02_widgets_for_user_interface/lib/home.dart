// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:lecture02_widgets_for_user_interface/app.dart';
import 'package:lecture02_widgets_for_user_interface/forget.dart';
import 'package:lecture02_widgets_for_user_interface/login.dart';
import 'package:lecture02_widgets_for_user_interface/register.dart';

//text color attributes
// class Home extends StatefulWidget {
//   const Home({Key? key}) : super(key: key);

//   @override
//   State<Home> createState() => _HomeState();
// }

// class _HomeState extends State<Home> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: Align(
//       alignment: Alignment.center,
//       child: Container(
//         child: Center(
//           child: Text(
//             "text widget",
//             style: TextStyle(
//                 color: Colors.white,
//                 fontSize: 40,
//                 fontWeight: FontWeight.bold,
//                 fontStyle: FontStyle.italic),
//                  textAlign: TextAlign.center,
//           ),
//         ),
//         // color: Color(0xff045c5c),

//         width: 300,
//         height: 200,
//         decoration: BoxDecoration(
//             color: Color.fromARGB(255, 0, 96, 84),
//             gradient: LinearGradient(colors: [Colors.black, Colors.blue]),
//             borderRadius: BorderRadius.circular(30)),
//       ),
//     ));
//   }
// }

//circular avatar

// class Home extends StatefulWidget {
//   const Home({Key? key}) : super(key: key);

//   @override
//   State<Home> createState() => _HomeState();
// }

// class _HomeState extends State<Home> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: CircleAvatar(
//         backgroundColor: Colors.teal,
//         // backgroundImage: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/thumb/3/32/Flag_of_Pakistan.svg/1200px-Flag_of_Pakistan.svg.png'),
//         // backgroundImage: AssetImage("assets/img.jpeg"),
//         radius: 100,
//       ),
//     );
//   }
// }

// class Home extends StatefulWidget {
//   const Home({Key? key}) : super(key: key);

//   @override
//   State<Home> createState() => _HomeState();
// }

// class _HomeState extends State<Home> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(children: [
//         Positioned(
//             left: 20,
//             top: 20,
//             right: 20,
//             bottom: 20,
//             child: Container(
//               width: 200,
//               height: 200,
//               color: Colors.blueGrey,
//             )),
//         Align(
//             alignment: Alignment.topLeft,
//             child: Container(
//               width: 200,
//               height: 200,
//               color: Colors.blue,
//             )),
//         Align(
//             alignment: Alignment.topRight,
//             child: Container(
//               width: 200,
//               height: 200,
//               color: Colors.red,
//             )),
//         Align(
//             alignment: Alignment.bottomLeft,
//             child: Container(
//               width: 200,
//               height: 200,
//               color: Colors.green,
//             )),
//         Align(
//             alignment: Alignment.bottomRight,
//             child: Container(
//               width: 200,
//               height: 200,
//               color: Colors.yellow,
//             )),
//       ]),
//     );
//   }
// }

// class Home extends StatefulWidget {
//   const Home({Key? key}) : super(key: key);

//   @override
//   State<Home> createState() => _HomeState();
// }

// class _HomeState extends State<Home> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         child: Text(
//           "media query ",
//           style: TextStyle(color: Colors.white),
//         ),
//         color: Colors.teal,
//         width: MediaQuery.of(context).size.width * 0.2,
//         height: MediaQuery.of(context).size.height * 0.2,
//       ),
//     );
//   }
// }

// class Home extends StatefulWidget {
//   const Home({Key? key}) : super(key: key);

//   @override
//   State<Home> createState() => _HomeState();
// }

// class _HomeState extends State<Home> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () {
//             Navigator.push(
//                 context, MaterialPageRoute(builder: (context) => App()));
//           },
//           child: Text("next page"),
//         ),
//       ),
//     );
//   }
// }

//list tile
// class Home extends StatefulWidget {
//   const Home({Key? key}) : super(key: key);

//   @override
//   State<Home> createState() => _HomeState();
// }

// class _HomeState extends State<Home> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: SingleChildScrollView(
//       child: Column(children: [
//         maryamkawidget(),
//         maryamkawidget(),
//         maryamkawidget(),
//         maryamkawidget(),
//         maryamkawidget(),
//         maryamkawidget(),
//         maryamkawidget(),
//         maryamkawidget(),
//         maryamkawidget(),
//         maryamkawidget(),
//         maryamkawidget(),
//         maryamkawidget(),
//         maryamkawidget(),
//         maryamkawidget(),
//         maryamkawidget(),
//       ]),
//     ));
//   }
// }

// Widget maryamkawidget() {
//   return ListTile(
//     leading: CircleAvatar(
//       backgroundColor: Colors.teal,
//       radius: 20,
//     ),
//     title: Text("bilal"),
//     subtitle: Text("sir class to horahi hai na ..."),
//     trailing: Column(
//       mainAxisAlignment: MainAxisAlignment.spaceAround,
//       children: [
//         Text("2:47PM"),
//         CircleAvatar(
//           backgroundColor: Colors.green,
//           radius: 10,
//           child: Text(
//             "56",
//             style: TextStyle(fontSize: 10),
//           ),
//         ),
//       ],
//     ),
//   );
// }

// class Home extends StatefulWidget {
//   const Home({Key? key}) : super(key: key);

//   @override
//   State<Home> createState() => _HomeState();
// }

// class _HomeState extends State<Home> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: ListView(
//       children: [
//         maryamque("maryam", "late any wali student"),
//         maryamque("bili", "chutiyan karny waly"),
//         maryamque("affa", "absent"),
//         maryamque("dhaniya", "regular student"),
//       ],
//     ));
//   }
// }

// Widget maryamque(var name, var title) {
//   return Container(
//     height: 100,
//     color: Colors.yellow,
//     child: Row(children: [
//       Container(
//         color: Colors.blue,
//         height: 70,
//         width: 70,
//       ),
//       Padding(
//           padding: const EdgeInsets.only(left: 8.0),
//           child: Column(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Text(name),
//                 Text(title),
//                 Icon(Icons.notifications),
//                 Text("Hello"),
//               ]))
//     ]),
//   );
// }

// class Home extends StatefulWidget {
//   const Home({Key? key}) : super(key: key);

//   @override
//   State<Home> createState() => _HomeState();
// }

// class _HomeState extends State<Home> {
//   @override
//   Widget build(BuildContext context) {
//     var students = ["Maryam", "eman", "Dhaniya", " afnan"];
//     var age = ["20", "34", "89", " 98"];
//     var image = [
//       "https://upload.wikimedia.org/wikipedia/commons/thumb/1/18/Aptech_Limited_Logo.svg/1200px-Aptech_Limited_Logo.svg.png",
//       "https://upload.wikimedia.org/wikipedia/commons/thumb/1/18/Aptech_Limited_Logo.svg/1200px-Aptech_Limited_Logo.svg.png",
//       "https://upload.wikimedia.org/wikipedia/commons/thumb/1/18/Aptech_Limited_Logo.svg/1200px-Aptech_Limited_Logo.svg.png",
//       "data:image/jpeg;base64,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"
//     ];

//     return Scaffold(
//       body: ListView.builder(
//           itemCount: students.length,
//           itemBuilder: (context, index) {
//             return ListTile(
//               leading: CircleAvatar(
//                 backgroundImage: NetworkImage(image[index]),
//                 radius: 20,
//               ),
//               title: Text(students[index]),
//               subtitle: Text(age[index]),
//               trailing: Column(
//                 mainAxisAlignment: MainAxisAlignment.spaceAround,
//                 children: [
//                   Text("2:47PM"),
//                   CircleAvatar(
//                     backgroundColor: Colors.green,
//                     radius: 10,
//                     child: Text(
//                       "56",
//                       style: TextStyle(fontSize: 10),
//                     ),
//                   ),
//                 ],
//               ),
//             );
//           }),
//     );
//   }
// }

// grid view

// class Home extends StatefulWidget {
//   const Home({Key? key}) : super(key: key);

//   @override
//   State<Home> createState() => _HomeState();
// }

// var students = [
//   "maaz",
//   "maryam",
//   "faris",
//   "daniyal",
//   "bili",
//   "hamza",
//   "ali",
//   "fatima",
//   "hasan",
//   "hussain",
//   "maaz",
//   "maryam",
//   "faris",
//   "daniyal",
//   "bili",
//   "hamza",
//   "ali",
//   "fatima",
//   "hasan",
//   "hussain"
// ];

// class _HomeState extends State<Home> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: GridView.count(
//         crossAxisCount: 2,
//         // crossAxisSpacing: 20,
//         // mainAxisSpacing: 20,
//         children: List.generate(students.length, (index) {
//           return Padding(
//             padding: EdgeInsets.all(8.0),
//             child: Container(
//               color: Colors.teal,
//               child: Center(
//                   child: Text(
//                 students[index],
//                 style: TextStyle(color: Colors.white),
//               )),
//             ),
//           );
//         }),
//       ),
//     );
//   }
// }

//drawer

// class Home extends StatefulWidget {
//   const Home({Key? key}) : super(key: key);

//   @override
//   State<Home> createState() => _HomeState();
// }

// class _HomeState extends State<Home> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//           backgroundColor: Colors.teal,
//           title: Center(
//             child: Text("Drawer Example"),
//           )),

//       // ignore: prefer_const_literals_to_create_immutables
//       drawer: Drawer(
//           child: ListView(
//         children: [
//           DrawerHeader(
//               child: Container(
//                   color: Colors.black,
//                   child: Image.network(
//                       'https://upload.wikimedia.org/wikipedia/commons/thumb/1/18/Aptech_Limited_Logo.svg/1200px-Aptech_Limited_Logo.svg.png'))),
//           GestureDetector(
//               onTap: () {
//                 Navigator.push(
//                     context, MaterialPageRoute(builder: (context) => App()));
//               },
//               child: ListTile(
//                 title: Text("app page"),
//               )),
//           ListTile(
//             title: Text("abc"),
//           ),
//           ListTile(
//             title: Text("abc"),
//           ),
//         ],
//       )),
//     );
//   }
// }

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
              backgroundColor: Colors.teal,
              title: Text("whatsapp"),
              bottom: TabBar(
                unselectedLabelColor: Colors.lightGreen,
                labelColor: Colors.white,
                indicatorColor: Colors.white,
                tabs: [
                  Tab(
                    child: Text("Chats"),
                  ),
                  Tab(
                    child: Text("Status"),
                  ),
                  Tab(
                    child: Text("Calls"),
                  ),
                ],
              )),
          body: TabBarView(children: [Login(), Register(), Forget()]),
        ));
  }
}
