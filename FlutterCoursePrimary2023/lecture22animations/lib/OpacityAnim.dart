import 'package:flutter/material.dart';

class OpacityAnim extends StatefulWidget {
  const OpacityAnim({super.key});

  @override
  State<OpacityAnim> createState() => _OpacityAnimState();
}

class _OpacityAnimState extends State<OpacityAnim> {
  var myopacity = 0.5;
  bool value = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedOpacity(
              opacity: myopacity,
              curve: Curves.slowMiddle,
              duration: Duration(seconds: 2),
              child: Container(
                width: 100,
                height: 100,
                color: Colors.orange,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  if (value) {
                    myopacity = 1.0;

                    value = false;
                  } else {
                    myopacity = 0.5;
                    value = true;
                  }

                  setState(() {});
                },
                child: Text("Anim Start"))
          ],
        ),
      ),
    );
  }
}
