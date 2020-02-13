import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/resusable_card.dart';
import 'package:flutter/material.dart';
import 'bottom_button.dart';

class ResultPage extends StatelessWidget {
  ResultPage({@required this.bmi, @required this.result, @required this.suggestion});
  final double bmi;
  final String result;
  final String suggestion;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Color(0xFF616161), //change your color here
        ),
        title: Text(
          'BMI Result',
        style: TextStyle(
          color: Color(0xFF616161)
        ),
        ),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
            child: Container(
              margin: EdgeInsets.only(top: 20.0),
              child: Text(
                'Result is ',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 40.0,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReuseableCard(
              color: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(
                    result,
                    style: kLightTextStyle,
                  ),
                  Text(
                    bmi.toStringAsFixed(2),
                    style: kBigBoldTextStyle,
                  ),
                  Text(
                    suggestion.toString(),
                    textAlign: TextAlign.center,
                    style: kLightTextStyle,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            text: 'RE-CALCULATE BMI',
            onPress: (){
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
