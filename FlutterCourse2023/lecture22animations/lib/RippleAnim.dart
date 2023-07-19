import 'package:flutter/material.dart';

class RippleAnim extends StatefulWidget {
  const RippleAnim({super.key});

  @override
  State<RippleAnim> createState() => _RippleAnimState();
}

class _RippleAnimState extends State<RippleAnim>
    with SingleTickerProviderStateMixin {
  late Animation _animation;
  late AnimationController _animationController;

  void initState() {
    // TODO: implement initState

    _animationController = AnimationController(
        vsync: this, duration: Duration(seconds: 4), lowerBound: 0.5);
    // _animation = Tween(begin: 0.0, end: 1.0).animate(_animationController);

    _animationController.addListener(() {
      setState(() {
        // print(_animation.value);
      });
    });

    _animationController.forward();
    super.initState();
  }

  var listdata = [100.0, 150.0, 200.0, 250.0, 300.0];
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
          alignment: Alignment.center,
          children: listdata
              .map((e) => Container(
                    width: e * _animationController.value,
                    height: e * _animationController.value,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.indigo
                            .withOpacity(1.0 - _animationController.value)),
                  ))
              .toList()),
    );
  }
}
