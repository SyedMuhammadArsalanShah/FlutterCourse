import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lecture29firebaseproject1/Home.dart';
import 'package:lecture29firebaseproject1/Login.dart';
import 'package:lecture29firebaseproject1/Signup.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 5), (() {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Login()));
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("welcome "),
    );
  }
}
