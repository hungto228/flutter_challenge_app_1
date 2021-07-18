import 'package:flutter/material.dart';
import 'package:flutter_app/BMI/compoment/bottom_button.dart';
import 'package:flutter_app/BMI/compoment/rousable_cart.dart';

import '../constants.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage(
      {required this.bmiResult,
      required this.resultText,
      required this.interpretation});

  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Bmi Cal"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                  child: Container(
                padding: EdgeInsets.all(15.0),
                alignment: Alignment.bottomLeft,
                child: Text(
                  "Your result ",
                  style: numberTextStyte,
                ),
              )),
              Expanded(
                  flex: 5,
                  child: ReusableCard(
                    colour: activeCardColor,
                    onpress: () {},
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          resultText.toUpperCase(),
                          style: resultsTextSty,
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          bmiResult,
                          style: bmiTextStyte,
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          interpretation,
                          style: bodytextSty,
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  )),
              BottomButton(
                  ontap: () {
                    Navigator.pop(context);
                  },
                  buttonTitle: "Re-CALCULATE")
            ],
          ),
        ));
  }
}
