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
      body:
      Center(
        child: ElevatedButton(
            onPressed: () async {
              DateTime? datepicker = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(2002),
                  lastDate: DateTime(2024));

              if (datepicker != null) {
                print(" selected  ${datepicker.day}");
              }
            },
            child: Text("Date Picker")),
      ),
    );
  }
}









