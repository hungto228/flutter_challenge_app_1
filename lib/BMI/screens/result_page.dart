import 'package:flutter/material.dart';
import 'package:flutter_app/BMI/compoment/bottom_button.dart';
import 'package:flutter_app/BMI/compoment/rousable_cart.dart';

import '../constants.dart';

class ResultsPage extends StatelessWidget {
  int resultNumber = 0;
  String resultText = "dddd";

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
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "normail",
                          style: resultsTextSty,
                        ),
                        Text(
                          "959",
                          style: bmiTextStyte,
                        ),
                        Text(
                          "bmi cuar banj qua thP Hvvvsdgagfhagaghsya an",
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
