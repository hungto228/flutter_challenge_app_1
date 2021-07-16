import 'package:flutter/material.dart';
import 'package:flutter_app/BMI/rousable_cart.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'icon_content.dart';

const bottomContainerheight = 70.0;
const activeCardColor = Color(0xFF37384C);
const inactiveCardColor = Color(0xff111328);
const bottomContainerColor = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = inactiveCardColor;
  Color femaleCardColor = inactiveCardColor;
  void updateColor(int gender) {
    if (gender == 1) {
      if (maleCardColor == inactiveCardColor) {
        maleCardColor = activeCardColor;
        femaleCardColor = inactiveCardColor;
      } else {
        maleCardColor = inactiveCardColor;
      }
    }
    //female
    if (gender == 2) {
      if (femaleCardColor == inactiveCardColor) {
        femaleCardColor = activeCardColor;
        maleCardColor = inactiveCardColor;
      } else {
        femaleCardColor = inactiveCardColor;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("BMI CACULATOR"),
        ),
        body: Column(
          children: [
            Expanded(
                child: Row(
              children: [
                Expanded(
                    child: GestureDetector(
                  onTap: () {
                    setState(() {
                      updateColor(1);
                    });
                  },
                  child: ReusableCard(
                    colour: maleCardColor,
                    cardChild: IconContent(
                      icon: FontAwesomeIcons.mars,
                      lable: "Male",
                    ),
                  ),
                )),
                Expanded(
                    child: GestureDetector(
                  onTap: () {
                    setState(() {
                      updateColor(2);
                    });
                  },
                  child: ReusableCard(
                    colour: femaleCardColor,
                    cardChild: IconContent(
                      icon: FontAwesomeIcons.venus,
                      lable: "Female",
                    ),
                  ),
                ))
              ],
            )),
            // Expanded(
            //     child: ReusableCard(
            //   colour: activeCardColor,
            // )),
            // Expanded(
            //     child: Row(
            //   children: [
            //     Expanded(
            //         child: ReusableCard(
            //       colour: activeCardColor,
            //     )),
            //     Expanded(
            //         child: ReusableCard(
            //       colour: activeCardColor,
            //     ))
            //   ],
            // )),
            Container(
              color: bottomContainerColor,
              margin: EdgeInsets.only(top: 10),
              width: double.infinity,
              height: bottomContainerheight,
            )
          ],
        ));
  }
}
