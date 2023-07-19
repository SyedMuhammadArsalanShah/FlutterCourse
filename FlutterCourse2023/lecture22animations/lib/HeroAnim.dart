import 'package:flutter/material.dart';

import 'DetailsPage.dart';

class HeroAnim extends StatefulWidget {
  const HeroAnim({super.key});

  @override
  State<HeroAnim> createState() => _HeroAnimState();
}

class _HeroAnimState extends State<HeroAnim> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailsPage(),
                    ));
              },
              child: Hero(
                  tag: "warisha",
                  child: Image.asset("assets/images/image.png"))),
        ),
      ),
    );
  }
}
