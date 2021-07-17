import 'package:flutter/material.dart';

import 'screens/input_page.dart';

void main() => runApp(BMIMain());

class BMIMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          //actionbar color
          primaryColor: Color(0xFF0A0E21),
          //main color
          scaffoldBackgroundColor: Color(0xFF0A0E21),
          //widgetColor
          accentColor: Colors.purpleAccent,
          textTheme: TextTheme(body1: TextStyle(color: Colors.white))),
      home: InputPage(),
    );
  }
}
