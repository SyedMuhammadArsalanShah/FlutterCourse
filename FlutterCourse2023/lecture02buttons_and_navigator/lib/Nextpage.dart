import 'package:flutter/material.dart';

class Nextpage extends StatefulWidget {
  const Nextpage({super.key});

  @override
  State<Nextpage> createState() => _NextpageState();
}

// *** Navigator.pop with outlined button ***
class _NextpageState extends State<Nextpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: OutlinedButton(
          child: Text("back"),
          onPressed: (() {
            Navigator.pop(context);
          }),
        ),
      ),
    );
  }
}
