import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:medichat/BMI.dart';
import 'package:medichat/ChatBot.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:provider/provider.dart';
import 'package:medichat/mcq.dart';
import 'input_page.dart';
class home_page extends StatefulWidget {
  @override
  _home_pageState createState() => _home_pageState();

}

class _home_pageState extends State<home_page> {
  final title = 'Medi Chat';
  Color primaryColor = Color(0xff18203d);
  Color secondaryColor = Color(0xff232c51);
  Color logoGreen = Color(0xff25bcbb);
  @override
  Widget build(BuildContext context) {
    final user=FirebaseAuth.instance.currentUser;
    return  MaterialApp(
      home: Scaffold(
        /*bottomNavigationBar: CurvedNavigationBar(
          index: selectIndex,
          items: [
            Icon(Icons.home),
            Icon(Icons.chat),
            Icon(Icons.folder),
            Icon(Icons.post_add),
            Icon(Icons.settings),
          ],
          onTap: (index){
            setState(() {
              selectIndex=index;
            });
          },
          animationCurve: Curves.easeInCirc,
          animationDuration: const Duration(milliseconds: 300),
        ),*/
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Center(child: Text(title)),
          backgroundColor: Colors.black,
        ),
        body: Container(
          color :Colors.grey.shade500,
          child: Column(
            children: <Widget>[
              //BMI
              Expanded(child: GestureDetector(
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>InputPage()));
                },
                child: Container(
                  margin: EdgeInsets.all(20),
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    color: Colors.grey.shade400,
                  ),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Icon(FontAwesomeIcons.calculator,size: 102,)
                      ),
                      Expanded(
                          flex: 4,
                          child:Column(
                            children: <Widget>[
                              Expanded(
                                flex:7,
                                child: Text('BMI',style: TextStyle(fontSize: 24,fontWeight:FontWeight.w200),),
                              ),
                              Expanded(
                                  flex:2,
                                  child: SizedBox(height: 5,)
                              ),
                              Expanded(
                                flex:5,
                                child: Text('Last Checked',textAlign: TextAlign.right,style: TextStyle(fontSize: 10,fontWeight:FontWeight.w100),),
                              )
                            ],
                          )
                      )
                    ],
                  ),
                ),
              ),),
              Expanded(child: GestureDetector(
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>Quizzler()));
                },
                child: Container(
                  margin: EdgeInsets.all(20),
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    color: Colors.grey.shade400,
                  ),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Icon(FontAwesomeIcons.listAlt,size: 102,),
                      ),
                      Expanded(
                          flex:4,
                          child:Column(
                            children: <Widget>[
                              Expanded(
                                flex:7,
                                child: Text('HRA',style: TextStyle(fontSize: 24,fontWeight:FontWeight.w200),),
                              ),
                              Expanded(
                                  flex:2,
                                  child: SizedBox(height: 5,)
                              ),
                              Expanded(
                                flex:5,
                                child: Text('Last Checked',textAlign: TextAlign.right,style: TextStyle(fontSize: 10,fontWeight:FontWeight.w100),),
                              )
                            ],
                          )
                      )
                    ],
                  ),
                ),
              ),),
              Expanded(child: Container(
                margin: EdgeInsets.all(20),
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  color: Colors.grey.shade400,
                ),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Icon(Icons.home),
                    ),
                    Expanded(
                        flex:4,
                        child:Column(
                          children: <Widget>[
                            Expanded(
                              flex:7,
                              child: Text('Calories Burnt',style: TextStyle(fontSize: 24,fontWeight:FontWeight.w200),),
                            ),
                            Expanded(
                                flex:2,
                                child: SizedBox(height: 5,)
                            ),
                            Expanded(
                              flex:5,
                              child: Text('Last Checked',textAlign: TextAlign.right,style: TextStyle(fontSize: 10,fontWeight:FontWeight.w100),),
                            )
                          ],
                        )
                    )
                  ],
                ),
              ),),
              Expanded(child: Container(
                margin: EdgeInsets.all(20),
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  color: Colors.grey.shade400,
                ),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Icon(Icons.home),
                    ),
                    Expanded(
                        flex:4,
                        child:Column(
                          children: <Widget>[
                            Expanded(
                              flex:7,
                              child: Text('Fit Track',style: TextStyle(fontSize: 24,fontWeight:FontWeight.w200),),
                            ),
                            Expanded(
                                flex:2,
                                child: SizedBox(height: 5,)
                            ),
                            Expanded(
                              flex:5,
                              child: Text('Last Checked',textAlign: TextAlign.right,style: TextStyle(fontSize: 10,fontWeight:FontWeight.w100),),
                            )
                          ],
                        )
                    )
                  ],
                ),
              ),),
              

            ],
          ),
        ),
      ),
    );
  }
}
