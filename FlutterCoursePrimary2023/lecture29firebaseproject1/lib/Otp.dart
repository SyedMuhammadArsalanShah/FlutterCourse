

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:lecture29firebaseproject1/Home.dart';

// ignore: must_be_immutable
class Otp extends StatefulWidget {
  String verificationId;

  // Otp(this.verificationId, {super.key});

  Otp({Key?key ,required this.verificationId }):super(key: key);

  @override
  State<Otp> createState() => _OtpState();
}

class _OtpState extends State<Otp> {
  var otpcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('OTP VERIFICATION'),
        backgroundColor: Colors.lightBlue.shade900,
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 65,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                " Enter OTP",
                style: TextStyle(
                    color: Colors.lightBlue.shade900,
                    fontFamily: 'RobotoSlab',
                    fontSize: 20),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(15),
              child: TextField(
                keyboardType: TextInputType.number,
                controller: otpcontroller,
                decoration: InputDecoration(
                  hintText: 'Enter Pin',
                  border: OutlineInputBorder(),
                  suffixIcon: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.verified_user),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: ElevatedButton(
                onPressed: () async {
                  FirebaseAuth auth = FirebaseAuth.instance;
                   final credential =  await PhoneAuthProvider.credential(
                      verificationId: widget.verificationId,
                      smsCode: otpcontroller.text);


                         await auth.signInWithCredential(credential);

                          Navigator.push(context,MaterialPageRoute(builder: (context) => Home(),));


                },
                child: Text("Done"),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.lightBlue.shade900),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
