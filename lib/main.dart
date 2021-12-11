import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_exercise_1/provider/cart_item.dart';
import 'package:provider_exercise_1/provider/counter_provider.dart';
import 'package:provider_exercise_1/screen/home_page.dart';
import 'package:provider_exercise_1/screen/second_screen.dart';

void main() {
  runApp(
    MultiProvider(providers: [
      ChangeNotifierProvider(create: (_) => CounterModel()),
      ChangeNotifierProvider(create: (_) => CartItem()),
    ], child: MyApp()),
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: "/",
      routes: {
        "/": (context) => HomePage(),
        "/second": (context) => SecondScreen(),
      },
    );
  }
}
