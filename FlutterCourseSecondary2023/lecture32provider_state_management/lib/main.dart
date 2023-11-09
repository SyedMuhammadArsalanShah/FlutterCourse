import 'package:flutter/material.dart';
import 'package:lecture32provider_state_management/L01Counter%20App/LectTwoProviderCounter.dart';
import 'package:lecture32provider_state_management/L02BMI%20App/LecOneBMI.dart';
import 'package:lecture32provider_state_management/L02BMI%20App/LectTwoBMIProvider.dart';
import 'package:lecture32provider_state_management/Providers/BMIProvider.dart';
import 'package:provider/provider.dart';

import 'Providers/CounterProvider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return 
    MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => CounterProvider()),
          ChangeNotifierProvider(create: (_) => BMIProvider()),
        ],
        child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          home: const Home(),
        ));

    // for single provider
    // return ChangeNotifierProvider(
    //   create: (_) => BMIProvider(),
    //   child: MaterialApp(
    //     title: 'Flutter Demo',
    //     theme: ThemeData(
    //       colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
    //       useMaterial3: true,
    //     ),
    //     home: const LectTwoBMIProvider(),
    //   ),
    // );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LectTwoProviderCounter(),
                    ));
              },
              child: Text("Lecture01 Counter App")),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LectTwoBMIProvider(),
                    ));
              },
              child: Text("Lecture02 Bmi App"))
        ],
      ),
    );
  }
}
