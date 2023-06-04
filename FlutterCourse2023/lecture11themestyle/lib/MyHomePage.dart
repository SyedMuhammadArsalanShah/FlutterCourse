import 'package:flutter/material.dart';

import 'myui/text.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text(
            "Warisha Aslam ",
            // for apply theme
            style: Theme.of(context).textTheme.displayLarge,
          ),
          Text(
            "Warisha Aslam ",
            style: Theme.of(context).textTheme.displayLarge,
          ),
          Text(
            "Warisha Aslam ",
            style: Theme.of(context).textTheme.displayLarge,
          ),
          Text(
            "Warisha Aslam ",
            style: Theme.of(context).textTheme.displayLarge,
          ),
          Text(
            "Warisha Aslam ",
            style: Theme.of(context).textTheme.displayLarge,
          ),
          Text(
            "Warisha Aslam ",
            // use copy with for specific styling
            style: Theme.of(context)
                .textTheme
                .bodyLarge!
                .copyWith(color: Colors.deepPurple),
          ),
          Text(
            "Warisha Aslam ",
            // empty body body function
            style: mytext21(),
          ),
          Text(
            "Warisha Aslam ",
            //function with parameters
            style: mytext11(colortext: Colors.brown),
          ),
        ],
      ),
    );
  }
}
