import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bg Changer',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  List<Color> randomColors = [
    Colors.greenAccent,
    Colors.grey,
    Colors.indigo,
    Colors.orangeAccent,
    Colors.pink,
    Colors.purpleAccent,
    Colors.tealAccent,
    Colors.black54,
    Colors.brown,
    Colors.amber,
    Colors.cyan,
  ];

  int index;
  Color colorRightNow;

  void changeColor(){
    setState(() {
      index = Random().nextInt(randomColors.length);
      colorRightNow = randomColors[index];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: colorRightNow,
      ),
      child: FlatButton(
        onPressed: changeColor,
        highlightColor: Colors.transparent,
        splashColor: Colors.transparent,
        child: Text(
          'Change !',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
          ),
        ),
      ),
    );
  }
}
