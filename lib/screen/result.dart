import 'package:bmi_calculator/components/constants.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
//import 'package:bmi_calculator/screen/input_page.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/components/bottom_button.dart';
//import 'package:bmi_calculator/components/calculator_brain';


class Result extends StatelessWidget {
  Result({@required this.resultText,@required this.bmiResult, @required this.interpetation});
  final String resultText;
  final String bmiResult;
  final String interpetation;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text('BMI CALCULATOR'),),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(child: Container(
            padding: EdgeInsets.all(20),
              alignment: Alignment.bottomLeft,
              child: Text('Your Result',style: kTitalTextStyle,))),
          Expanded(
            flex: 5,
          child: ReusableCard(colour: kActivecardcolour,
    cardChild: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(resultText.toUpperCase(),style: kresultTextStyle,),
              Text(bmiResult,style:kBMITextStyle ,),
              Text(interpetation,style: kBodyTextStyle,),

            ],
          ),),

          ),
          BottomButton(
            buttomTitle: 'RECALCULATE',
            onTap: (){
          Navigator.pop(context);
          },
            )

        ],
      ),
    );
  }
}
