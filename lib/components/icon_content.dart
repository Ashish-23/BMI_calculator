import 'package:bmi_calculator/components/constants.dart';
import 'package:flutter/material.dart';

class IconContent extends StatelessWidget {
  IconContent({this.cardIcon, this.cardText});
  final IconData cardIcon;
  final String cardText;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(
            cardIcon,
            size: 70.0,
          ),
          SizedBox(
            height: 15.0,
          ),
          Text(
            cardText,
            style:kLevelTextStyle
          )
        ],
      ),
    );
  }
}

