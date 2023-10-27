import 'package:flutter/material.dart';
import 'package:lecture32provider_state_management/LectTwoProviderCounter.dart';
import 'package:lecture32provider_state_management/lectOneCounterApp.dart';
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
    return ChangeNotifierProvider(
      create: (_) => CounterProvider(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const LectTwoProviderCounter(),
      ),
    );
  }
}
