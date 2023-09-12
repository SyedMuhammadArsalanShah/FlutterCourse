import 'package:flutter/material.dart';
import 'Home.dart';

import 'package:shared_preferences/shared_preferences.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var wacontroller = TextEditingController();
  var passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundColor: Colors.brown,
               child:Icon(Icons.account_circle_rounded,color: Colors.white,),
                radius: 35,
               
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextField(
                  controller: wacontroller,
                  decoration: InputDecoration(
                    hintText: 'Username',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextField(
                  controller: passController,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Password',
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () async {
                  final SharedPreferences pref =
                      await SharedPreferences.getInstance();
                  pref.setBool("isLoggedIn", true);

                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => Home()),
                  );
                },
                child: Text("Log In"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
