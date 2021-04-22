import 'package:flutter/material.dart';

void main() => runApp(Quizzler());

class Quizzler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('HRA Test')),
          backgroundColor: Colors.black,
        ),
        backgroundColor: Colors.grey.shade400,
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
  'On an average,how many portions of Fruits and Vegetable do you eat in a day?',
  'On an average,how many times in a week would you eat foods or drinks that are high in sugar or unhealthy fats?',
  'On an average ,how much water do you drink in a day?',
  'In a typical week, how oftern do you engage in physical exercise?',
  'How many minutes do you engage in the physical activity?',
  // 'On an average day , how many hours do you spend sitting (at work and at home)?',
  'On an average,how many hours of sleep do you get in a day?',
  'On an average how often do you wake in the morning feeling refreshed?',
  'Do you currently smoke cigarettes or use any other tobacco(chewing,smoking) products on a daily basis?',
  'Do you live with or are you frequently arund people who smoke?',
  'How often do you drink alcohol?',
  'How often would you have more than 4 drinks conataining alcohol over the course of 2 or 3 hours?',
  'In the last 3 months,how often have you felt sad,depressed or low in mood?',
  'In the last 3 months,how often have you felt anxious or stressed',
  'How often do you spend more than 6 hours a day in front of any electronic device?',
  'In the last 12 months,how many times you have fallen ill'
];
List<String> options=[
  '0-1','2-3','3-5','More than 5',
  '0-1','2-3','3-5','More than 5',
  'Less than 1L','1-2L','2-4','More than 4 litres',
  'Never','Less than 3 days a week','3-4 days a week','7 days',
  'less than 15 min','15-25 mins','25-45 mins','More than 45 mins',
  '2 to 4 hours','4-6 hours','6-8 hours','More than 8 hours',
  'Less than 5 hours','5-6:30 hours','6:30 -7-30 hours','More than 7:30 hours ',
  'Daily','Sometimes','Rarely','None of the above',
  'Yes','No but used to','Not often','Never',
  'Always','Sometimes','Rarely','None of the above',
  'Never','1 drink a day','More than 1 drink a day','Once in Weekly',
  '0-25% of the time','25-50% of the time','50-75% of the time','75-100% of the time',
  '0-25% of the time','25-50% of the time','50-75% of the time','75-100% of the time',
  'Always','Very Often','Rarely','Never',
  'Never','Once-twice','more than Twice','Almost Once in month'

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
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.black,
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
                options.elementAt(questionnumber*4+0),
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              onPressed: () {
                setState(() {
                  colornumber1 = 1;
                  colornumber2 = 0;
                  colornumber3 = 0;
                  colornumber4 = 0;
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
                options.elementAt(questionnumber*4+1),
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                setState(() {
                  colornumber1 = 0;
                  colornumber2 = 1;
                  colornumber3 = 0;
                  colornumber4 = 0;
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
                options.elementAt(questionnumber*4+2),
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                setState(() {
                  colornumber1 = 0;
                  colornumber2 = 0;
                  colornumber3 = 1;
                  colornumber4 = 0;
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
                options.elementAt(questionnumber*4+3),
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                setState(() {
                  colornumber1 = 0;
                  colornumber2 = 0;
                  colornumber3 = 0;
                  colornumber4 = 1;
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
                          if(questionnumber!=questionlist.length-1){
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