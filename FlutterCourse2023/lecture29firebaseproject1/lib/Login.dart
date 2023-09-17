import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:lecture29firebaseproject1/ForgotScreen.dart';
import 'package:lecture29firebaseproject1/HomeFirestore.dart';
import 'package:lecture29firebaseproject1/ImageScreenDB.dart';

import 'package:lecture29firebaseproject1/Phone.dart';
import 'package:lecture29firebaseproject1/toastmsg.dart';
import 'Home.dart';
import 'Signup.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var logemail = TextEditingController();
  var logpass = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Padding(
        padding: EdgeInsets.fromLTRB(8, 100, 8, 0),
        child: Column(
          children: [
            SizedBox(
              height: 35,
            ),
            Text(
              'LOGIN',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 7, 38, 124),
                  fontSize: 25),
            ),
            SizedBox(
              height: 35,
            ),
            TextField(
              controller: logemail,
              decoration: InputDecoration(
                hintText: ('Email'),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: logpass,
              decoration: InputDecoration(
                hintText: ('Password'),
                suffixIcon: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.remove_red_eye),
                ),
              ),
            ),
            Row(
              children: [
                SizedBox(
                  height: 70,
                ),
                Text('Create an account ',
                    style: TextStyle(
                        color: const Color.fromARGB(255, 102, 100, 100))),
                InkWell(
                  child: Text('  Signup',
                      style: TextStyle(
                          color: Color.fromRGBO(5, 23, 128, 0.78),
                          fontSize: 15)),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Signup()));
                  },
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: ElevatedButton(
                  onPressed: () async {
                    try {
                      await FirebaseAuth.instance
                          .signInWithEmailAndPassword(
                              email: logemail.text, password: logpass.text)
                          .then((value) {
                        Navigator.push(
                            context,
                            // MaterialPageRoute(builder: (context) => Home()));
                            // MaterialPageRoute(builder: (context) => HomeFirestore()));
                            MaterialPageRoute(
                                builder: (context) => ImageScreenDB()));
                      });

                      // Navigator.push(context,
                      //     MaterialPageRoute(builder: (context) => Home()));
                    } on FirebaseAuthException catch (e) {
                      if (e.code == 'user-not-found') {
                        Toastmsg().toast("No user found for that email.");
                        print('No user found for that email.');
                      } else if (e.code == 'wrong-password') {
                        Toastmsg()
                            .toast('Wrong password provided for that user.');
                        print('Wrong password provided for that user.');
                      } else {
                        Toastmsg().toast("W-m my exeption");
                        print("W-m my exeption");
                      }
                    }
                    setState(() {});
                  },
                  child: Text('LOGIN')),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Phone(),
                      ));
                },
                child: Text("SignIn")),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ForgotScreen(),
                      ));
                },
                child: Text("Forget Pass"))
          ],
        ),
      )),
    );
  }
}
