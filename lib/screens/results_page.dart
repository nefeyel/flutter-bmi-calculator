import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:flutter/material.dart';
import '../components/bottom_button.dart';
import 'input_page.dart';

class ResultsPage extends StatelessWidget {
  final String bmiResult;
  final String resultCategoryText;
  final String interpretation;

  ResultsPage({this.bmiResult, this.resultCategoryText, this.interpretation});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            child: Text(
              'Your Result',
              style: kTitleTextStyle,
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(resultCategoryText.toUpperCase(),
                      style: kBmiResultCategoryTextStyle),
                  Text(bmiResult, style: kBmiResultTextStyle),
                  Text('Normal BMI range'),
                  Text('18.5 - 25 kg/m2'),
                  Container(
                    child: Text(
                      interpretation,
                      style: kBmiInterpretationTextStyle,
                      textAlign: TextAlign.justify,
                    ),
                    padding: EdgeInsets.all(15.0),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              height: kBottomContainerHeight,
              child: BottomButton(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return InputPage();
                    },
                  ));
                },
                buttonTitle: 'RE-CALCULATE',
              ),
            ),
          )
        ],
      ),
    );
  }
}
