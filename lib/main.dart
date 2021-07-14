import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// the main function start point for all app
void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('i am rhingich'),
        backgroundColor: Colors.blueGrey,
      ),
      body: Center(
        child: Image(
          image: AssetImage('images/haha.jpg'),
        ),
      ),
    ),
  ));
}
