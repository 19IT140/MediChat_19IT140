import 'main.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'Gender_Card.dart';
import 'Reusable_card.dart';
import 'Constant.dart';
import 'result_page.dart';
import 'BMI_Calculator.dart';

enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = kInactiveCardColor;
  Color femaleCardColor = kInactiveCardColor;
  Gender selectedGender;
  int height = 180;
  int weight = 60;
  int age=30;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor:Colors.grey.shade400 ,
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
          backgroundColor: Colors.black,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            //having gender card which will toggle on select
            Expanded(
                child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    colour: selectedGender == Gender.male
                        ? kActiveCardColor
                        : kInactiveCardColor,
                    childWidget: GenderCard(
                      text: "MALE",
                      icon: FontAwesomeIcons.mars,

                    ),
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: selectedGender == Gender.female
                        ? kActiveCardColor
                        : kInactiveCardColor,
                    childWidget: GenderCard(
                        text: "FEMALE", icon: FontAwesomeIcons.venus),
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                  ),
                ),
              ],
            )),
            Expanded(
              child: ReusableCard(
                colour: kActiveCardColor,
                childWidget: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Height',
                      style: kLableTextStyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      children: <Widget>[
                        Text(
                          height.toString(),
                          style: kHeavyTextLable,
                        ),
                        Text(
                          ' CM',
                          style: kLableTextStyle,
                        ),
                      ],
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        activeTrackColor: Colors.white,
                        inactiveTrackColor: Color(0xFF8D8E98),
                        thumbColor: Color(0xFFEB1555),
                        overlayColor: Color(0x29EB1555),
                        thumbShape:
                            RoundSliderThumbShape(enabledThumbRadius: 15),
                        overlayShape:
                            RoundSliderOverlayShape(overlayRadius: 30),
                      ),
                      child: Slider(
                        value: height.toDouble(),
                        min: 120,
                        max: 220,
                        onChanged: (double updateValue) {
                          setState(() {
                            height = updateValue.round();
                          });
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: ReusableCard(
                colour: kActiveCardColor,
                childWidget: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Weight',
                      style: kLableTextStyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      children: <Widget>[
                        Text(
                        weight.toString(),
                          style: kHeavyTextLable,
                        ),
                        Text(
                          ' KG',
                          style: kLableTextStyle,
                        ),
                      ],
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        activeTrackColor: Colors.white,
                        inactiveTrackColor: Color(0xFF8D8E98),
                        thumbColor: Color(0xFFEB1555),
                        overlayColor: Color(0x29EB1555),
                        thumbShape:
                        RoundSliderThumbShape(enabledThumbRadius: 15),
                        overlayShape:
                        RoundSliderOverlayShape(overlayRadius: 30),
                      ),
                      child: Slider(
                        value: weight.toDouble(),
                        min: 40,
                        max: 140,
                        onChanged: (double updateValue) {
                          setState(() {
                            weight = updateValue.round();
                          });
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: (){
                BmiCalc calc=BmiCalc(height : height,weight: weight);

                Navigator.push(context, MaterialPageRoute(builder: (context)=>ResultPage(BMIResult:calc.BMICalculator() ,ResultText: calc.getResult().toUpperCase(),interpretation: calc.getInterpretation(),)));
              },
              child: Container(
                margin: EdgeInsets.only(top: 10),
                width: double.infinity,
                height: kBottomContainerHeight,
                color: kButtonColor,
                child: Center(child: Text("Calculate",style: kLargeButtonTextStyle)),
                padding: EdgeInsets.only(bottom: 20.0),
              ),
            )
          ],
        ));
  }
}
