import 'dart:async';
import 'db_test.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Dog> _dogs = [];

  @override
  void initState() {
    super.initState();
    _loadDogs();
  }

  Future<void> _loadDogs() async {
    var DatabaseHelper;
    final dogs = await DatabaseHelper.instance.dogs();
    setState(() {
      _dogs = dogs;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Dogs'),
        ),
        body: ListView.builder(
          itemCount: _dogs.length,
          itemBuilder: (BuildContext context, int index) {
            final dog = _dogs[index];
            return ListTile(
              title: Text(dog.toString()),
            );
          },
        ),
      ),
    );
  }
}