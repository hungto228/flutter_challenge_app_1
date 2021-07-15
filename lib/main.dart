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

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: FlatButton(
                onPressed: () {
                  setState(() {
                    leftDicenumber = Random().nextInt(6) + 1;
                  });
                },
                child: Image.asset("images/dice$leftDicenumber.png")),
          ),
          Expanded(
            child: FlatButton(
                onPressed: () {
                  setState(() {
                    rightDicenumber = Random().nextInt(6) + 1;
                  });
                },
                child: Image.asset("images/dice$rightDicenumber.png")),
          ),
        ],
      ),
    );
  }
}
