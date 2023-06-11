import 'package:flutter/material.dart';
import 'package:quran/quran.dart' as quran;

class First extends StatefulWidget {
  const First({super.key});

  @override
  State<First> createState() => _FirstState();
}

class _FirstState extends State<First> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            "القرآن الکریم ",
            style: TextStyle(fontFamily: 'mushaf', color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue[900]),
      body: Column(
        children: [
          warishaHorizontalWidget(),
          warishaVerticalWidget(),
        ],
      ),
    );
  }

  Widget warishaVerticalWidget() {
    return Expanded(
        flex: 7,
        child: ListView.builder(
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: double.infinity,
                height: 100,
                color: Colors.indigo[900],
                child: Center(
                  child: Text(quran.getSurahName(index + 1),
                      style: TextStyle(color: Colors.white)),
                ),
              ),
            );
          },
          itemCount: quran.totalSurahCount,
          // itemCount: 114,
        ));
  }

  Widget warishaHorizontalWidget() {
    return Expanded(
        child: ListView.builder(
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: 100,
            height: 100,
            color: Colors.indigo[900],
            child: Center(
              child: Text(quran.getSurahName(index + 1),
                  style: TextStyle(color: Colors.white)),
            ),
          ),
        );
      },
      itemCount: quran.totalSurahCount,
      // itemCount: 114,
    ));
  }
}
