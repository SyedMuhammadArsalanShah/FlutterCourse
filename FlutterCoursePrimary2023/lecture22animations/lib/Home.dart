import 'package:flutter/material.dart';
import 'package:lecture22animations/CrossFadeAnim.dart';
import 'package:lecture22animations/RippleAnim.dart';

import 'FooAnim.dart';
import 'HeroAnim.dart';
import 'OpacityAnim.dart';
import 'TweenAnim.dart';

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
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => FooAnim(),
                      ));
                },
                child: Text("Foo Animation (Animated Conatiner)")),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => OpacityAnim(),
                      ));
                },
                child: Text("Animated Opacity")),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HeroAnim(),
                      ));
                },
                child: Text("Hero Animation ")),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CrossFadeAnim(),
                      ));
                },
                child: Text("CrossFadeAnimation")),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => TweenAnim(),
                      ));
                },
                child: Text("Tween Animation ")),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => RippleAnim(),
                      ));
                },
                child: Text("Ripple Animation")),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
