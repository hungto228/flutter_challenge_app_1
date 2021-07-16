//todo: iconcontent
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class IconContent extends StatelessWidget {
  IconContent({required this.icon, required this.lable});
  final IconData icon;
  final String lable;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          FontAwesomeIcons.icons,
          size: 90,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          "$lable",
          style: TextStyle(fontSize: 18, color: Color(0xff8d8e98)),
        )
      ],
    );
  }
}
