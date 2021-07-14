import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink,
          title: Text('cua nang flutter'),
        ),
        body: NewWidget(),
      ),
    ),
  ));
}

class couter extends StatelessWidget {
  late int countter;

  @override
  Widget build(BuildContext context) {
    return Text("tui laf widget data hien tai$countter");
  }


}

class NewWidget extends StatelessWidget {
  const NewWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("chao cau"),
        Row(
          children: [
            FlatButton(
              onPressed: () {},
              child: Text("red"),
              color: Colors.red,
            ),
            FlatButton(
              onPressed: () {},
              child: Text("red"),
              color: Colors.green,
            ),
            FlatButton(
              onPressed: () {},
              child: Text("yellow"),
              color: Colors.yellow,
            )
          ],
        )
      ],
    );
  }
}
