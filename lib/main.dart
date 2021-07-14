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
          image: NetworkImage(
              "https://scontent-hkg4-2.xx.fbcdn.net/v/t1.6435-9/217410506_3599727820129199_5025664587525944081_n.jpg?_nc_cat=110&ccb=1-3&_nc_sid=825194&_nc_ohc=dsU9ljxdT2QAX993j8X&tn=mL_qVgmRIBnWdVmx&_nc_ht=scontent-hkg4-2.xx&oh=51d94b6a4c9af3c678ebf31a0739e217&oe=60F2B14C"),
        ),
      ),
    ),
  ));
}
