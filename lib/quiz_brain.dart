import 'ModelQuestion.dart';

class QuizBrain {
  int questionNumber = 0;
  List<ModelQuestion> listQuestion = [
    ModelQuestion(q: "hungto228", a: false),
    ModelQuestion(q: "hungto229", a: true),
    ModelQuestion(q: "hungto230", a: false),
  ];

  void nestQuestion() {
    if (questionNumber < listQuestion.length - 1) {
      questionNumber++;
    }
  }

  String getQuestisionnumver() {
    return listQuestion[questionNumber].questiontext;
  }

  bool getQuestisionAnswer() {
    return listQuestion[questionNumber].questionAnswer;
  }
}
