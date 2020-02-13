import 'package:flutter/material.dart';
import 'constants.dart';

class BottomButton extends StatelessWidget {
  BottomButton({@required this.text, @required this.onPress});

  final String text;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        width: double.infinity,
        height: 80.0,
        color: kBottomButtonBackgroundColor,
        margin: EdgeInsets.only(top: 8),
        child: Center(
          child: Text(
            this.text,
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                fontFamily: 'MartelSans',
                color: Color(0xFFEEEEEE)
            ),
          ),
        ),
      ),
    );
  }
}
