import 'package:flutter/material.dart';

class Second extends StatefulWidget {
  const Second({super.key});

  @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Center(
            child: ConstrainedBox(
          constraints: BoxConstraints(
            minWidth: 10,
            minHeight: 10,
            maxHeight: 50,
            maxWidth: 200,
          ),
          child: SizedBox.expand(
            child: ElevatedButton(
                onPressed: () {}, child: Text("Expand sized Box")),
          ),
        )),
        SizedBox(
          height: 25,
        ),
        Center(
            child: ConstrainedBox(
          constraints: BoxConstraints(
            minWidth: 100,
            minHeight: 50,
            maxHeight: 500,
            maxWidth: 200,
          ),
          child: SizedBox.shrink(
            child: ElevatedButton(
                onPressed: () {}, child: Text("Shrink sized Box")),
          ),
        )),
        SizedBox(
          height: 25,
        ),
        Center(
            child: ConstrainedBox(
          constraints: BoxConstraints(
            minWidth: 100,
            minHeight: 10,
            maxHeight: 500,
            maxWidth: 20,
          ),
          child: SizedBox.square(
            child: ElevatedButton(
                onPressed: () {}, child: Text("Square sized Box")),
          ),
        )),
      ],
    ));
  }
}
