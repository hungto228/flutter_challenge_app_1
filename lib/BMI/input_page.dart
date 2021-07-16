import 'package:flutter/material.dart';

const bottomContainerheight = 70.0;
const activeCardColor = Color(0xFF1D1E33);
const bottomContainerColor = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
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
                    child: ReusableCard(
                  colour: activeCardColor,
                )),
                Expanded(
                    child: ReusableCard(
                  colour: activeCardColor,
                ))
              ],
            )),
            Expanded(
                child: ReusableCard(
              colour: activeCardColor,
            )),
            Expanded(
                child: Row(
              children: [
                Expanded(
                    child: ReusableCard(
                  colour: activeCardColor,
                )),
                Expanded(
                    child: ReusableCard(
                  colour: activeCardColor,
                ))
              ],
            )),
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

class ReusableCard extends StatelessWidget {
  ReusableCard({required this.colour});

  final Color colour;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: colour,
        ));
  }
}
