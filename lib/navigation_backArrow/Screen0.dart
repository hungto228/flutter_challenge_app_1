import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Screen1.dart';

void main() => runApp(MaterialApp(
      home: Screen0(),
      title: "jaajjaj",
    ));

class Screen0 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen1"),
      ),
      body: Container(
        child: RaisedButton(
          color: Colors.red,
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Screen1()));
          },
        ),
      ),
    );
  }
}
