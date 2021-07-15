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
            backgroundColor: Colors.teal,
            appBar: AppBar(
              title: Text('i am rhingich'),
              backgroundColor: Colors.blueGrey,
            ),
            body: SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
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
                  SizedBox(
                    height: 20,
                    width: 150,
                    child: Divider(
                      color: Colors.red,
                    ),
                  ),
                  Card(
                    color: Colors.blueGrey,
                    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: ListTile(
                        leading: Icon(
                          Icons.phone,
                        ),
                        title: Text(
                          "0379117280",
                          style: TextStyle(color: Colors.red, fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                  Card(
                      color: Colors.red,
                      margin:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                      child: Padding(
                          padding: EdgeInsets.all(10),
                          child: ListTile(
                            leading: Icon(Icons.mail),
                            title: Text(
                              "hungto228@gmail.com",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                  fontStyle: FontStyle.italic),
                            ),
                          ))),
                ],
              ),
            )));
  }
}
