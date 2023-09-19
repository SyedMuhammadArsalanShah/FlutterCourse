import 'package:flutter/material.dart';

class Ranges extends StatefulWidget {
  const Ranges({super.key});

  @override
  State<Ranges> createState() => _RangesState();
}

class _RangesState extends State<Ranges> {
  RangeValues values = RangeValues(0, 50000);

  @override
  Widget build(BuildContext context) {
    RangeLabels labels =
        RangeLabels(values.start.toString(), values.end.toString());
    return Scaffold(
      body: Center(
        child: RangeSlider(
          values: values,
          labels: labels,
          divisions: 20,
          min: 0,
          max: 100000,
          activeColor: const Color.fromARGB(255, 90, 68, 3),
          inactiveColor: Colors.amberAccent,
          onChanged: (newvalue) {
            values = newvalue;

            setState(() {});
          },
        ),
      ),
    );
  }
}
