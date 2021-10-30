import 'package:bim_calculator/bottom_button.dart';
import 'package:bim_calculator/reusableCard.dart';
import 'package:flutter/material.dart';

import 'constans.dart';

class Resultpage extends StatelessWidget {
  const Resultpage({Key? key}) : super(key: key);

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
                  'Your Result',
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
                    'Normal',
                    style: resultTextStyle,
                  ),
                  Text(
                    '18.3',
                    style: BMITextStyle,
                  ),
                  Text(
                    'Your BMI result is quite low, you should eat more',
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
