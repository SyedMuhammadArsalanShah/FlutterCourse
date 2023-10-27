import 'package:flutter/material.dart';

class LectOneCounterApp extends StatefulWidget {
  const LectOneCounterApp({super.key});

  @override
  State<LectOneCounterApp> createState() => _LectOneCounterAppState();
}

class _LectOneCounterAppState extends State<LectOneCounterApp> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(DateTime.now().toString()),
            Text(counter.toString()),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    counter++;
                  });
                },
                child: Text("Counter")),
          ],
        ),
      ),
    );

   
  }
}
