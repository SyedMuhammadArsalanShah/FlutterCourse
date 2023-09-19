import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'Splash.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Warisha"),
            ElevatedButton(
                onPressed: ()async {
                   final SharedPreferences pref =
                      await SharedPreferences.getInstance();
                  pref.setBool("isLoggedIn", false);
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => Splash()));
                },
                child: Text("LOG OUT"))
          ],
        ),
      ),
    );
  }
}
