import 'package:flutter/material.dart';
import 'package:quran/quran.dart' as quran;

// ignore: must_be_immutable

class Surah extends StatelessWidget {
  int indexsurah;
  Surah(this.indexsurah, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          quran.getSurahName(indexsurah + 1),
          style: TextStyle(fontFamily: 'fontqur', color: Colors.black),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Card(
            child: ListView.builder(
              itemCount: quran.getVerseCount(indexsurah + 1),
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    title: Text(
                      quran.getVerse(indexsurah + 1, index + 1,
                          verseEndSymbol: true),
                      textAlign: TextAlign.right,
                      style:
                          TextStyle(fontFamily: 'fontqur', color: Colors.black),
                    ),
                  ),
                  margin: const EdgeInsets.all(10),
                  shape: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(color: Colors.white)),
                );
              },
            ),
            margin: const EdgeInsets.all(10),
            shape: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(color: Colors.white)),
          ),
        ),
      ),
    );
  }
}
