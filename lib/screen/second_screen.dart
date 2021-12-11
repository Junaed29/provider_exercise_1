import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_exercise_1/provider/cart_item.dart';
import 'package:provider_exercise_1/provider/counter_provider.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            Text('Provider Example App ${context.watch<CounterModel>().count}'),
      ),
      body: Center(
        child: Column(
          children: [
            Text('${context.watch<CartItem>().cartSize}'),
            Text('${context.watch<CartItem>().cartList}'),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.read<CartItem>().addCartItem("Bread");
        },
        tooltip: 'Add Item',
        child: Icon(Icons.add),
      ),
    );
  }
}
