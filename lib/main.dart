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
              child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                height: 100,
                child: Text("Container 1"),
                color: Colors.red,
                margin: EdgeInsets.zero,
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 100,
                child: Text("container 2"),
                color: Colors.yellow,
                margin: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              ),
            ],
          ))),
    );
  }
}
