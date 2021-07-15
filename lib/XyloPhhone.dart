import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(SYlophone());

class SYlophone extends StatelessWidget {
  const SYlophone({Key? key}) : super(key: key);

  void playSound(int number) {
    final player = AudioCache();
    player.play("note$number.wav");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                FlatButton(
                  onPressed: () {
                    playSound(1);
                  },
                  child: Text("Clik1"),
                  color: Colors.red,
                ),
                FlatButton(
                  onPressed: () {
                    playSound(2);
                  },
                  child: Text("Clik2"),
                  color: Colors.orange,
                ),
                FlatButton(
                  onPressed: () {
                    playSound(3);
                  },
                  child: Text("Clik3"),
                  color: Colors.yellow,
                ),
                FlatButton(
                  onPressed: () {
                    playSound(4);
                  },
                  child: Text("Clik4"),
                  color: Colors.green,
                ),
                FlatButton(
                  onPressed: () {
                    playSound(5);
                  },
                  child: Text("Clik5"),
                  color: Colors.blueGrey,
                ),
                FlatButton(
                  onPressed: () {
                    playSound(6);
                  },
                  child: Text("Clik6"),
                  color: Colors.blue,
                ),
                FlatButton(
                  onPressed: () {
                    playSound(7);
                  },
                  child: Text("Clik7"),
                  color: Colors.purple,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
