import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_exercise_1/provider/counter_provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Provider example ${context.watch<CounterModel>().count}"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "You have pushed button ${context.watch<CounterModel>().count} times",
              style: TextStyle(fontSize: 18),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/second");
              },
              child: Text("Next Screen"),
            )
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              context.read<CounterModel>().decrement();
            },
            tooltip: "Decrement",
            child: const Icon(Icons.remove),
          ),
          const SizedBox(width: 10),
          FloatingActionButton(
            onPressed: () {
              context.read<CounterModel>().reset();
            },
            tooltip: "Reset",
            child: const Icon(Icons.exposure_zero),
          ),
          const SizedBox(width: 10),
          FloatingActionButton(
            onPressed: () {
              context.read<CounterModel>().increment();
            },
            tooltip: "Increment",
            child: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
