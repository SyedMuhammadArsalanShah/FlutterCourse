import 'package:flutter/material.dart';

import 'Create.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('First Screen'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Create()),
                  );
                },
                child: Text('Create'),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text('Read'),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text('Update'),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text('Delete'),
              ),
            ],
          ),
        ));
  }
}
