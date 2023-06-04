import 'package:flutter/material.dart';

class Textfieldcomp extends StatefulWidget {
  const Textfieldcomp({super.key});

  @override
  State<Textfieldcomp> createState() => _TextfieldcompState();
}

class _TextfieldcompState extends State<Textfieldcomp> {
  var useremail = TextEditingController();
  var userpass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              keyboardType: TextInputType.emailAddress,
              // enabled: false,
              controller: useremail,
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.mail,
                  color: Colors.green,
                ),
                // suffixText: "username exist",
                suffixIcon: IconButton(
                  icon: Icon(Icons.info),
                  onPressed: () {},
                ),
                hintText: "enter your email",
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.purple, width: 2),
                    borderRadius: BorderRadius.circular(14)),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green, width: 2),
                    borderRadius: BorderRadius.circular(14)),
                disabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 2),
                    borderRadius: BorderRadius.circular(14)),
              ),
            ),
            Container(
              height: 40,
            ),
            TextField(
              // enabled: false,
              keyboardType: TextInputType.number,
              controller: userpass,
              obscureText: true,
              obscuringCharacter: "*",
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.password,
                  color: Colors.green,
                ),
                // suffixText: "username exist",
                suffixIcon: IconButton(
                  icon: Icon(Icons.remove_red_eye),
                  onPressed: () {},
                ),
                hintText: "enter your pass",

                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.purple, width: 2),
                    borderRadius: BorderRadius.circular(14)),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green, width: 2),
                    borderRadius: BorderRadius.circular(14)),
                disabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 2),
                    borderRadius: BorderRadius.circular(14)),
              ),
            ),
            Container(
              height: 40,
            ),
            ElevatedButton(
                onPressed: () {
                  String uemail = useremail.text.toString();
                  String upass = userpass.text;

                  print("User Email ${uemail} \n");
                  print("User pass  ${upass} \n");
                },
                child: Text("Login"))
          ],
        ),
      ),
    ));
  }
}
