import 'package:bim_calculator/reusableCard.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'iconContent.dart';

const buttomContainerHeight = 80.0;
const activeCardColor = Color(0xFF1D1E33);
const buttomContainerColor = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text('BMI Calculator'),
          ),
          body: Column(
            children: [
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: ReusableCard(
                        colour: activeCardColor,
                        cardChild: IconConent(
                          icon: FontAwesomeIcons.mars,
                          label: "MALE",
                        ),
                      ),
                    ),
                    Expanded(
                      child: ReusableCard(
                        colour: activeCardColor,
                        cardChild: IconConent(
                          icon: FontAwesomeIcons.venus,
                          label: "Femal",
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: ReusableCard(
                  colour: activeCardColor,
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: ReusableCard(
                        colour: activeCardColor,
                      ),
                    ),
                    Expanded(
                      child: ReusableCard(
                        colour: activeCardColor,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: buttomContainerHeight,
                margin: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  color: buttomContainerColor,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ],
          )),
    );
  }
}



