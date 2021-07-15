import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(SYlophone());

class SYlophone extends StatelessWidget {
  const SYlophone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: FlatButton(
              onPressed: () {
                //init player
                final player = AudioCache(prefix: 'assets/');
                player.play("note1.wav");
              },
              child: Text("clickme"),
            ),
          ),
          //english word
          //   child: Center(child: Text(adjectives.last)),
        ),
      ),
    );
  }
}
