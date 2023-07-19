import 'dart:async';

import 'package:flutter/material.dart';

class CrossFadeAnim extends StatefulWidget {
  const CrossFadeAnim({super.key});

  @override
  State<CrossFadeAnim> createState() => _CrossFadeAnimState();
}

class _CrossFadeAnimState extends State<CrossFadeAnim> {
  bool agrtrueho = true;

  @override
  void initState() {
    // TODO: implement initState

    Timer(Duration(seconds: 4), () {
      reload();
    });
    super.initState();
  }

  void reload() {
    setState(() {
      agrtrueho = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedCrossFade(
            firstChild: Container(
              width: 500,
              height: 500,
              color: Colors.teal,
            ),
            sizeCurve: Curves.fastOutSlowIn,
            secondChild: Image.asset(
              "assets/images/image.png",
              width: 500,
              height: 500,
            ),
            duration: Duration(seconds: 2),
            crossFadeState: agrtrueho
                ? CrossFadeState.showFirst
                : CrossFadeState.showSecond),
      ),
    );
  }
}
