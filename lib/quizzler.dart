import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/quiz_brain.dart';

QuizBrain quizBrain = QuizBrain();

void main() => runApp(quizzler());

class quizzler extends StatelessWidget {
  const quizzler({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Quizpage(),
          ),
        ),
      ),
    );
  }
}

class Quizpage extends StatefulWidget {
  const Quizpage({Key? key}) : super(key: key);

  @override
  _QuizpageState createState() => _QuizpageState();
}

class _QuizpageState extends State<Quizpage> {
  List<Icon> scoreKeeper = [];

  void checkAnswer(bool userPickedAnswer) {
    bool correctAnswer = quizBrain.getQuestisionAnswer();
    if (userPickedAnswer == correctAnswer) {
      scoreKeeper.add(Icon(Icons.check, color: Colors.green));
    } else {
      scoreKeeper.add(Icon(Icons.close, color: Colors.red));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
            flex: 5,
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Center(
                child: Text(
                  quizBrain.getQuestisionnumver(),
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 25, color: Colors.white),
                ),
              ),
            )),
        Expanded(
            child: Padding(
          padding: EdgeInsets.all(15),
          child: FlatButton(
            textColor: Colors.white,
            color: Colors.green,
            child: Text(
              "True",
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
            onPressed: () {
              //user oicker true
              checkAnswer(true);
              setState(() {
                quizBrain.nestQuestion();
              });
            },
          ),
        )),
        Expanded(
            child: Padding(
          padding: EdgeInsets.all(15),
          child: FlatButton(
            textColor: Colors.white,
            color: Colors.red,
            child: Text(
              "False",
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
            onPressed: () {
              checkAnswer(false);
              setState(() {
                quizBrain.nestQuestion();
              });
            },
          ),
        )),
        Row(
          children: scoreKeeper,
        )
      ],
    );
  }
}
