import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:lecture29firebaseproject1/Login.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [IconButton( onPressed: () async {
                await FirebaseAuth.instance.signOut().then((value) {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Login()));
                });
              }, icon: Icon(Icons.logout_outlined))],),
      body: Center(
          child: ElevatedButton(
              onPressed: () async {
                await FirebaseAuth.instance.signOut().then((value) {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Login()));
                });
              },
              child: Text("logout"))),
    );
  }
}
