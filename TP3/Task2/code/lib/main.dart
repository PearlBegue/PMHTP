import 'package:flutter/material.dart';
import 'package:tp3task2/screens/screen4.dart';
import 'package:tp3task2/screens/screen1.dart';
import 'package:tp3task2/screens/screen2.dart';
import 'package:tp3task2/screens/screen3.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final Map<String, WidgetBuilder> routes = {
    '/screen1': (BuildContext context) => Screen1(),
    '/screen2': (BuildContext context) => Screen2(),
    '/screen3': (BuildContext context) => Screen3(),
    '/screen4': (BuildContext context) => Screen4(),
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Multi-Screen App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/screen1',
      routes: routes,
    );
  }
}
