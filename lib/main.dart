import 'package:flutter/material.dart';
import 'package:provider_exercise_1/screen/home_page.dart';
import 'package:provider_exercise_1/screen/second_screen.dart';

void main() {
  runApp(MyApp());
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
