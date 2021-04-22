import 'package:flutter/material.dart';

void main() => runApp(Quizzler());

class Quizzler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Multichoice type Questions')),
          backgroundColor: Colors.blueGrey,
        ),
        backgroundColor: Colors.grey.shade900,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

Color color1 = Colors.grey;
Color color2 = Colors.green;
int colornumber1 = 0;
int colornumber2 = 0;
int colornumber3 = 0;
int colornumber4 = 0;
List<Color> colorslist = [color1, color2];
List<String> questionlist = [
  'Question1',
  'Question2',
  'Question3',
  'Question4'
];
int questionnumber=0;

class _QuizPageState extends State<QuizPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 6,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                questionlist.elementAt(questionnumber),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: FlatButton(
              textColor: Colors.white,
              color: colorslist.elementAt(colornumber1),
              child: Text(
                'OP-1',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              onPressed: () {
                setState(() {
                  if(colornumber1==0){
                  colornumber1 = 1;
                  }
                  else{
                    colornumber1=0;
                  }
              });
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: FlatButton(
              color: colorslist.elementAt(colornumber2),
              child: Text(
                'OP-2',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                setState(() {
                  if(colornumber2==0){
                    colornumber2 = 1;
                  }
                  else{
                    colornumber2=0;
                  }
                });
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: FlatButton(
              color: colorslist.elementAt(colornumber3),
              child: Text(
                'OP-3',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                setState(() {
                  if(colornumber3==0){
                    colornumber3 = 1;
                  }
                  else{
                    colornumber3=0;
                  }
                });
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: FlatButton(
              color: colorslist.elementAt(colornumber4),
              child: Text(
                'OP-4',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                setState(() {
                  if(colornumber4==0){
                  colornumber4 = 1;
                }
                else{
                  colornumber4=0;
                }
                });
              },
            ),
          ),
        ),
        Expanded(
            flex: 2,
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: FlatButton(
                      color: Colors.red,
                      child: Text(
                        'Back',
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                        ),
                      ),
                      onPressed: () {
                        setState(() {
                          if(questionnumber!=0){
                            questionnumber--;
                            colornumber1 = 0;
                            colornumber2 = 0;
                            colornumber3 = 0;
                            colornumber4 = 0;
                          }

                        });
                      },
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: FlatButton(
                      color: Colors.red,
                      child: Text(
                        'Next',
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                        ),
                      ),
                      onPressed: () {
                        setState(() {
                          if(questionnumber!=3){
                            questionnumber++;
                            colornumber1 = 0;
                            colornumber2 = 0;
                            colornumber3 = 0;
                            colornumber4 = 0;
                          }
                        });
                      },
                    ),
                  ),
                ),
              ],
            )),
      ],
    );
  }
}