import 'package:flutter/material.dart';

class FooAnim extends StatefulWidget {
  const FooAnim({super.key});

  @override
  State<FooAnim> createState() => _FooAnimState();
}

class _FooAnimState extends State<FooAnim> {
  double width_ = 300;
  double height_ = 200;
  bool value = true;
  // var bgcolor = Colors.indigo;
  var mydeco = BoxDecoration(
      color: Colors.amber, borderRadius: BorderRadius.circular(21));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: AnimatedContainer(
              width: width_,
              height: height_,
              // color: bgcolor,
              decoration: mydeco,
              curve: Curves.bounceIn,
              duration: Duration(seconds: 3),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
              onPressed: () {
                if (value) {
                  width_ = 200;
                  height_ = 300;
                  mydeco = BoxDecoration(
                      color: Colors.amberAccent,
                      borderRadius: BorderRadius.circular(5));
                  // bgcolor = Colors.blue;
                  value = false;
                } else {
                  width_ = 300;
                  height_ = 200;
                  // bgcolor = Colors.indigo;
                  mydeco = BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(21));

                  value = true;
                }

                setState(() {});
              },
              child: Text("Anim Start"))
        ],
      ),
    );
  }
}
