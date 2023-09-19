import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:lecture29firebaseproject1/Otp.dart';
import 'package:lecture29firebaseproject1/toastmsg.dart';

class Phone extends StatefulWidget {
  const Phone({super.key});

  @override
  State<Phone> createState() => _PhoneState();
}

class _PhoneState extends State<Phone> {
  var phoneNumbercon = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PHONE VERIFICATION'),
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
                " Enter Phone No :",
                style: TextStyle(
                    color: Colors.lightBlue.shade900,
                    fontFamily: 'RobotoSlab',
                    fontSize: 20),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(14.0),
              child: TextField(
                controller: phoneNumbercon,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter Phone Number +92 ',
                  suffixIcon: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.phone),
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
                    FirebaseAuth.instance.verifyPhoneNumber(
                      phoneNumber: phoneNumbercon.text.toString(),
                      verificationCompleted: (_) {},
                      verificationFailed: (error) {
                        Toastmsg().toast("${error}");
                      },
                      codeSent: (String verificationId, int? resendToken) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Otp(verificationId: verificationId),
                            ));
                      },
                      codeAutoRetrievalTimeout: (error) {
                        Toastmsg().toast("${error}");
                      },
                    );
                  },
                  child: Text("VERIFY"),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.lightBlue.shade900),
                )),
          ],
        ),
      ),
    );
  }
}
