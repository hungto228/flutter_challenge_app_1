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
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage("images/bell.png"),
                  ),
                  Text(
                    "hungto",
                    style: TextStyle(
                        fontFamily: "GreatVibes",
                        fontSize: 40,
                        color: Colors.red,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "development",
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.yellow,
                        fontFamily: "GreatVibes"),
                  ),
                  Container(
                    color: Colors.blueGrey,
                    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                    padding: EdgeInsets.all(10),
                    child: Row(
                      children: [
                        Icon(
                          Icons.phone,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "0379117280",
                          style: TextStyle(color: Colors.red, fontSize: 20),
                        )
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.red,
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                    child: Row(
                      children: [
                        Icon(Icons.email),
                        SizedBox(width: 10),
                        Text(
                          "hungto228@gmail.com",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontStyle: FontStyle.normal),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )));
  }
}
