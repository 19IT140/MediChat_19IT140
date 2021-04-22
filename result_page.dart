import 'Reusable_card.dart';
import 'package:flutter/material.dart';
import 'Constant.dart';




class ResultPage extends StatelessWidget {
  final String BMIResult;
  final String ResultText;
  final String interpretation;

  ResultPage({@required this.BMIResult,this.ResultText,this.interpretation});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
          backgroundColor: Colors.black,
        ),
        backgroundColor: Colors.grey.shade400,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Container(
                child: Center(
                    child: Text(
                  'Your Result',
                  style: kTitleTextStyle,
                )),
              ),
            ),
            Expanded(
                flex: 3,
                child: ReusableCard(
                  colour: kActiveCardColor,
                  childWidget: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(ResultText, style: kResultTextStyle),
                      Text(
                        BMIResult,
                        style: kBMITextStyle,
                      ),
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Text(
                            interpretation,
                            style: kInterpretation,
                          ),
                        ),
                      )
                    ],
                  ),
                )),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                margin: EdgeInsets.only(top: 10),
                width: double.infinity,
                height: kBottomContainerHeight,
                color: kButtonColor,
                child: Center(
                    child: Text("Re-Calculate", style: kLargeButtonTextStyle)),
                padding: EdgeInsets.only(bottom: 20.0),
              ),
            )
          ],
        ));
  }
}
