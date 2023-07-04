import 'package:flutter/material.dart';

class BMI extends StatefulWidget {
  const BMI({super.key});

  @override
  State<BMI> createState() => _BMIState();
}

class _BMIState extends State<BMI> {
  var wtcontroller = TextEditingController();
  var ftcontroller = TextEditingController();
  var itcontroller = TextEditingController();
  var result = "";
  var msg = "";
  var bgcolor = Colors.indigo;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("BMI Calculator"),
              SizedBox(
                height: 22,
              ),
              TextField(
                controller: wtcontroller,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.monitor_weight_rounded)),
              ),
              SizedBox(
                height: 12,
              ),
              TextField(
                controller: ftcontroller,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(prefixIcon: Icon(Icons.height)),
              ),
              SizedBox(
                height: 12,
              ),
              TextField(
                controller: itcontroller,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(prefixIcon: Icon(Icons.height)),
              ),
              SizedBox(
                height: 12,
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      var wt = wtcontroller.text.toString();
                      var ft = ftcontroller.text.toString();
                      var it = itcontroller.text.toString();

                      if (wt == "" && ft == "" && it == "") {
                        result = "please insert all values";
                      } else {
                        var iwt = int.parse(wt);
                        var ift = int.parse(ft);
                        var iit = int.parse(it);

                        var totalinches = (ift * 12) + iit;

                        var totalcm = totalinches * 2.54;

                        var totalmeters = totalcm / 100;
                        var bmi = iwt / (totalmeters * totalmeters);

                        if (bmi > 25) {
                          msg = "you are over weight";
                          bgcolor = Colors.amber;
                        } else if (bmi < 18) {
                          msg = "you are under weight";
                          bgcolor = Colors.red;
                        } else {
                          msg = "you are healthy";
                          bgcolor = Colors.green;
                        }

                        result =
                            "$msg \n your bmi is = ${bmi.toStringAsFixed(2)}";
                      }
                    });
                  },
                  child: Text("Calculate BMI")),
              SizedBox(
                height: 12,
              ),
              Text(
                "$result",
                style: TextStyle(fontSize: 21, color: Colors.white),
              )
            ],
          ),
        ),
      ),
      backgroundColor: bgcolor,
    );
  }
}
