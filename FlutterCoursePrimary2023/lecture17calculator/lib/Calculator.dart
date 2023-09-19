import 'package:flutter/material.dart';

import 'package:math_expressions/math_expressions.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  var result = "";

  Widget btn(text) {
    return ElevatedButton(
        onPressed: () {
          setState(() {
            result += text;
          });
        },
        child: Text(text));
  }

  clearbtn() {
    setState(() {
      result = " ";
    });
  }

  equalbtn() {
    Parser parser = Parser();

    Expression exp = parser.parse(result);
    ContextModel cm = ContextModel();
    double eval = exp.evaluate(EvaluationType.REAL, cm);

    setState(() {
      result = eval.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text(
            result,
            style: TextStyle(fontSize: 30),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [btn("1"), btn("2"), btn("3"), btn("*")]),
          SizedBox(
            height: 10,
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [btn("4"), btn("5"), btn("6"), btn("-")]),
          SizedBox(
            height: 10,
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [btn("7"), btn("8"), btn("9"), btn("/")]),
          SizedBox(
            height: 10,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            btn("0"),
            ElevatedButton(onPressed: clearbtn, child: Text("C")),
            ElevatedButton(onPressed: equalbtn, child: Text("=")),
            btn("+")
          ]),
        ],
      ),
    );
  }
}
