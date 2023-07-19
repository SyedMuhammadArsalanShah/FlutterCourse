import 'package:flutter/material.dart';

class TweenAnim extends StatefulWidget {
  const TweenAnim({super.key});

  @override
  State<TweenAnim> createState() => _TweenAnimState();
}

class _TweenAnimState extends State<TweenAnim>
    with SingleTickerProviderStateMixin {
  late Animation _animation;
  late Animation _animationcolor;
  late AnimationController _animationController;

  @override
  void initState() {
    // TODO: implement initState

    _animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 4));
    _animation = Tween(begin: 0.0, end: 200.0).animate(_animationController);
    _animationcolor = ColorTween(begin: Colors.teal, end: Colors.blue)
        .animate(_animationController);
    Tween(begin: 0.0, end: 200.0).animate(_animationController);

    _animationController.addListener(() {
      setState(() {
        print(_animation.value);
      });
    });

    _animationController.forward();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Container(
        width: _animation.value,
        height: _animation.value,
        color: _animationcolor.value,
      ),
    ));
  }
}
