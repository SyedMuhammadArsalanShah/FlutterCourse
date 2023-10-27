import 'package:flutter/material.dart';
import 'package:lecture32provider_state_management/Providers/CounterProvider.dart';
import 'package:provider/provider.dart';

class LectTwoProviderCounter extends StatefulWidget {
  const LectTwoProviderCounter({super.key});

  @override
  State<LectTwoProviderCounter> createState() => _LectTwoProviderCounterState();
}

class _LectTwoProviderCounterState extends State<LectTwoProviderCounter> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<CounterProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: Text("Provider Counter"),
      ),
      body: Center(
        child: Column(
          children: [
            Text(DateTime.now().toString()),
             



            Consumer<CounterProvider>(builder: (context, value, child) {
             return  Text(value.count.toString());
            },),
            ElevatedButton(
                onPressed: () {
                  provider.increment();
                },
                child: Text("Press"))
          ],
        ),
      ),
    );
  }
}
