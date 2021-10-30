import 'package:flutter/material.dart';

import 'constans.dart';

class BottomButton extends StatelessWidget {
  BottomButton({required this.ontap, required this.buttonTitle});

  final Function() ontap;
  final String buttonTitle;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        child: Center(
          child: Text(
            buttonTitle,
            style: largeButtonTextStyle,
          ),
        ),
        height: buttomContainerHeight,
        margin: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: buttomContainerColor,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
