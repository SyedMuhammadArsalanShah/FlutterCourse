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
//       "https://images.unsplash.com/photo-1533473359331-0135ef1b58bf?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8Y2FyfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=600&q=60"
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
