import 'package:flutter/cupertino.dart';
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

class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: FlatButton(
                onPressed: () {
                  print("left button");
                },
                child: Image.asset("images/dice1.png")),
          ),
          Expanded(
            child: FlatButton(
                onPressed: () {
                  print(" right bottom");
                },
                child: Image.asset("images/dice1.png")),
          ),
        ],
      ),
    );
  }
}
