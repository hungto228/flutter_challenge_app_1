import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// the main function start point for all app
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('i am rhingich'),
            backgroundColor: Colors.blueGrey,
          ),
          body: SafeArea(
            child: Container(
              margin: EdgeInsets.zero,
              height: 100,
              width: 100,
              color: Colors.red,
              child: Text("chaof"),
            ),
          )),
    );
  }
}
