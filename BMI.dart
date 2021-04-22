import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
class BMI extends StatefulWidget {
  @override
  _BMIState createState() => _BMIState();
}

class _BMIState extends State<BMI> {
  final controller1 = TextEditingController();
  final controller2 = TextEditingController();
  String output1 = '';
  String output2 = '';
  double heightInCm;
  double weightInKg;
  String FinalOutput = 'BMI';
  double bmi;
  Color primaryColor = Color(0xff18203d);
  Color secondaryColor = Color(0xff232c51);
  Color logoGreen = Color(0xff25bcbb);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: secondaryColor,
          title: Center(child: Text('BMI')),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 32.0),
                  child: TextField(
                    keyboardType: TextInputType.number,
                    controller: controller1,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent),
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.purple),
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                      ),
                      // prefixIcon: Icon(Icons.trending_up)
                      hintText: 'Enter Height in CM',
                      filled: true,
                      fillColor: Colors.blueGrey,
                    ),
                  ),
                ),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 32.0),
                  child: TextField(
                    keyboardType: TextInputType.number,
                    controller: controller2,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent),
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.deepPurple),
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                      ),
                      hintText: 'Enter Weight in KG',
                      filled: true,
                      fillColor: Colors.blueGrey,
                    ),
                  ),
                ),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Card(
                    color: logoGreen,
                    child: FlatButton(
                      child: Text('Submit'),
                      padding: const EdgeInsets.all(8),
                      onPressed: () {
                        setState(() {
                          output1 = controller1.text;
                          output2 = controller2.text;
                          heightInCm = double.parse(output1);
                          weightInKg = double.parse(output2);
                          bmi = weightInKg * 10000 / (heightInCm * heightInCm);
                          //  FinalOutput = bmi.toStringAsFixed(2);
                          if (bmi < 18.5) {
                            FinalOutput = "BMI = "+bmi.toStringAsFixed(2) + " UnderWeight";
                          } else if (bmi >= 18.5 && bmi <= 25) {
                            FinalOutput = "BMI = "+bmi.toStringAsFixed(2) + " Normal";
                          } else if (bmi > 25 && bmi <= 30) {
                            FinalOutput = "BMI = "+bmi.toStringAsFixed(2) + " OverWeight";
                          } else {
                            FinalOutput = "BMI = "+bmi.toStringAsFixed(2) + " Obese";
                          }
                        });
                      },
                    ),
                  ),
                ),
              ),
              Card(
                child: Container(
                  width: 200,
                  child: Center(child: Text(FinalOutput)),
                  padding: EdgeInsets.symmetric(vertical: 15),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
