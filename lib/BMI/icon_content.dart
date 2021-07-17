//todo: iconcontent
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'constants.dart';

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
          icon,
          size: 90,
          color: Colors.white,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          "$lable",
          style: lableTextStyle,
        )
      ],
    );
  }
}
