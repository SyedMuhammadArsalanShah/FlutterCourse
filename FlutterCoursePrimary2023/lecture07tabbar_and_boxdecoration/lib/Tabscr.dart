import 'Chats.dart';
import 'Status.dart';
import 'contacts.dart';
import 'package:flutter/material.dart';

class Tabscr extends StatefulWidget {
  const Tabscr({super.key});

  @override
  State<Tabscr> createState() => _TabscrState();
}

class _TabscrState extends State<Tabscr> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
            title: Text("SSUT Chat"),
            bottom: TabBar(
              labelColor: Colors.green,
              unselectedLabelColor: Colors.grey,
              indicatorColor: Colors.teal,
              tabs: [
                Tab(
                  text: "Chats",
                ),
                Tab(
                  text: "Status",
                ),
                Tab(text: "contacts")
              ],
            ),
          ),
          body: TabBarView(children: [Chats(), Status(), Contacts()])),
    );
  }
}
