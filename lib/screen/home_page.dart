import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Provider example"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text("You have pushed button 0 times"),
            ElevatedButton(
              child: const Text("Press"),
              onPressed: () {},
            )
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {},
            tooltip: "Decrement",
            child: const Icon(Icons.remove),
          ),
          const SizedBox(width: 10),
          FloatingActionButton(
            onPressed: () {},
            tooltip: "Reset",
            child: const Icon(Icons.exposure_zero),
          ),
          const SizedBox(width: 10),
          FloatingActionButton(
            onPressed: () {},
            tooltip: "Increment",
            child: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
