import 'dart:math';

import 'package:flutter/material.dart';

// the main function start point for all app
void main() {
  return runApp(MaterialApp(
    home: Center(
      child: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text("dicee"),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  ));
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDicenumber = 1;
  int rightDicenumber = 1;

  void changeDiceFace() {
    setState(() {
      rightDicenumber = Random().nextInt(6) + 1;
      leftDicenumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: FlatButton(
                onPressed: () {
                  changeDiceFace();
                },
                child: Image.asset("images/dice$leftDicenumber.png")),
          ),
          Expanded(
            child: FlatButton(
                onPressed: () {
                  changeDiceFace();
                },
                child: Image.asset("images/dice$rightDicenumber.png")),
          ),
        ],
      ),
    );
  }
}
