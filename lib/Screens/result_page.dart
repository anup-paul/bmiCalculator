import 'package:bim_calculator/Components/bottom_button.dart';
import 'package:bim_calculator/Components/reusableCard.dart';
import 'package:flutter/material.dart';

import '../constans.dart';

class Resultpage extends StatelessWidget {
  Resultpage(
      {required this.bmiResult,
      required this.resultText,
      required this.interpretation});
  final String? bmiResult;
  final String? resultText;
  final String? interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              child: Center(
                child: Text(
                  "Your Result",
                  style: titleTextStyle,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: activeCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    resultText!,
                    style: resultTextStyle,
                  ),
                  Text(
                    bmiResult!,
                    style: BMITextStyle,
                  ),
                  Text(
                    interpretation!,
                    textAlign: TextAlign.center,
                    style: BMIBodyTextStyle,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
              ontap: () {
                Navigator.pop(context);
              },
              buttonTitle: "RE-CALCULATE")
        ],
      ),
    );
  }
}
