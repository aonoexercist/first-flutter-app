import 'package:flapp/robots.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Robots',
      theme: ThemeData(
        primaryColor: Colors.deepOrange,
      ),
      home: Robots()
    );
  }
}