import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:lecture29firebaseproject1/toastmsg.dart';

class ForgotScreen extends StatefulWidget {
  const ForgotScreen({super.key});

  @override
  State<ForgotScreen> createState() => _ForgotScreenState();
}

class _ForgotScreenState extends State<ForgotScreen> {
  var emailpass = TextEditingController();

  FirebaseAuth auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            TextField(
              controller: emailpass,
            ),
            ElevatedButton(
              onPressed: () {

              var  email = emailpass.text.toString();
                auth.sendPasswordResetEmail(email: email).then((value) {Toastmsg().toast("Send Email ");}).onError((error, stackTrace) {
                  Toastmsg().toast(error.toString());
                });
              },
              child: Text("Send Email"),
            )
          ],
        ),
      ),
    );
  }
}
