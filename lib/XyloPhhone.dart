import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(SYlophone());

class SYlophone extends StatelessWidget {
  const SYlophone({Key? key}) : super(key: key);

  void playSound(int number) {
    final player = AudioCache();
    player.play("note$number.wav");
  }

  Expanded buildKey(
      {required Color color, required int soundNumber, required int click}) {
    return Expanded(
      child: FlatButton(
          onPressed: () {
            playSound(soundNumber);
          },
          child: Text("Click+$click"),
          color: color),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(color: Colors.red, soundNumber: 1, click: 1),
              buildKey(color: Colors.orange, soundNumber: 2, click: 2),
              buildKey(color: Colors.yellow, soundNumber: 3, click: 3),
              buildKey(color: Colors.green, soundNumber: 4, click: 4),
              buildKey(color: Colors.teal, soundNumber: 5, click: 5),
              buildKey(color: Colors.blue, soundNumber: 6, click: 6),
              buildKey(color: Colors.purpleAccent, soundNumber: 7, click: 7),
            ],
          ),
        ),
      ),
    );
  }
}
