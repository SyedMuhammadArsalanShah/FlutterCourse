import 'package:flutter/material.dart';

import 'Ranges.dart';

class Darwernav extends StatefulWidget {
  const Darwernav({super.key});

  @override
  State<Darwernav> createState() => _DarwernavState();
}

class _DarwernavState extends State<Darwernav> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.brown,
          title: Center(
            child: Text("Drawer Example"),
          )),

      // ignore: prefer_const_literals_to_create_immutables
      drawer: Drawer(
          child: ListView(
        children: [
          DrawerHeader(
              child: Container(
            child: Image.network(
                "https://cdn.shopify.com/s/files/1/0490/2443/4341/files/tiles_800x800_crop_center.jpg?v=1673243940"),
          )),
          GestureDetector(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Ranges()));
              },
              child: ListTile(
                title: Text("Range slider"),
              )),
          ListTile(
            title: Text("Contact us"),
          ),
          ListTile(
            title: Text("About us"),
          ),
        ],
      )),
    );
  }
}
