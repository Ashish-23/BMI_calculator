import 'package:flutter/material.dart';
import 'constants.dart';

class BottomButton extends StatelessWidget {
  BottomButton({@required this.onTap, @required this.buttomTitle});
  final Function onTap;
  final String buttomTitle;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(child: Text(buttomTitle,style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold),)),
        margin: EdgeInsets.only(top: 20),
        color: kBottomContainerColour,
        height: kBottomContainterHeight,
        width: double.infinity,
      ),
    );
  }
}