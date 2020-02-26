import 'package:flutter/material.dart';

class RobotDetail extends StatefulWidget {
  final String name;
  final String image;
  RobotDetail(this.name, this.image);

  @override
  _RobotDetailState createState() => _RobotDetailState(this.name, this.image);
}

class _RobotDetailState extends State<RobotDetail> {
  final String name;
  final String image;
  _RobotDetailState(this.name, this.image);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
      ),
      body: Center(
        child: Hero(
          tag: name,
          child: Image.network(image),
        ),
      )
    );
  }
}