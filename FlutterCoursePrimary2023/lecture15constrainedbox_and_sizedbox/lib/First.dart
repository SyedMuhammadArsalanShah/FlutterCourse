import 'package:flutter/material.dart';

class First extends StatefulWidget {
  const First({super.key});

  @override
  State<First> createState() => _FirstState();
}

class _FirstState extends State<First> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ConstrainedBox(
        constraints: BoxConstraints(
          minHeight: 100,
          maxHeight: 500,
          maxWidth: 200,
          minWidth: 100,
        ),
        child: Column(
          children: [
            Text(
                "Lorem ipsum dolor sit amet consectetur adipisicing elit. Distinctio aliquam officiis voluptates hic enim culpa, velit eos non asperiores. At iusto perspiciatis fugiat animi ab consectetur veniam ad. Eos, quaerat?"),
            ElevatedButton(
              onPressed: () {},
              child: Text("Warisha Aslam "),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text("Warisha Aslam "),
            ),
          ],
        ),
      ),
    );
  }
}
