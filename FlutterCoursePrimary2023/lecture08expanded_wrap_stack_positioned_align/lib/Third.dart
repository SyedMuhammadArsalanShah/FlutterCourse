import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Third extends StatefulWidget {
  const Third({Key? key}) : super(key: key);

  @override
  State<Third> createState() => _ThirdState();
}

class _ThirdState extends State<Third> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // *** Stack Positioned and Align ***
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: [
            Container(
              color: Colors.black,
              width: 400,
              height: 400,
            ),
            Container(
              color: const Color.fromARGB(255, 196, 39, 39),
              width: 300,
              height: 300,
            ),
            Positioned(
                right: 10,
                bottom: 10,
                child: Container(
                  color: Color.fromARGB(255, 44, 61, 174),
                  width: 200,
                  height: 200,
                )),
            Align(
                alignment: Alignment.center,
                child: Container(
                  color: Color.fromARGB(255, 53, 220, 44),
                  width: 100,
                  height: 100,
                )),
          ],
        ),
      ),
    );
  }
}
