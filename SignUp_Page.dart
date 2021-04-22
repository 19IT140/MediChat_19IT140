import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:medichat/LoginScreen.dart';

import 'home_page.dart';
class signup extends StatefulWidget {
  @override
  _signupState createState() => _signupState();
}

class _signupState extends State<signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomPadding: false,
        body :Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(top: 35.0,left: 20.0,right: 20.0),
              child: Column(
                children: <Widget>[
                  CircleAvatar(
                    radius: 100.0,
                    backgroundImage: AssetImage('images/Username.png'),
                  ),
                  TextField(
                    decoration: InputDecoration(
                        labelText: 'First Name',
                        labelStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Montserrat',
                            color: Colors.grey
                        ),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.green)
                        )
                    ),
                  ),
                  SizedBox(height: 20.0),
                  TextField(
                    decoration: InputDecoration(
                        labelText: 'Last Name',
                        labelStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Montserrat',
                            color: Colors.grey
                        ),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.green)
                        )
                    ),
                  ),
                  SizedBox(height: 20.0),
                  TextField(
                    decoration: InputDecoration(
                        labelText: 'Email',
                        labelStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Montserrat',
                            color: Colors.grey
                        ),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.green)
                        )
                    ),
                  ),
                  SizedBox(height: 20.0),
                  TextField(
                    decoration: InputDecoration(
                        labelText: 'Password',
                        labelStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Montserrat',
                            color: Colors.grey
                        ),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.green)
                        )
                    ),
                    obscureText: true,
                  ),
                  SizedBox(height: 40.0),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>home_page()));
                    },
                    child: Container(
                      height: 40.0,
                      child: Material(
                        borderRadius: BorderRadius.circular(20.0),
                        shadowColor: Colors.greenAccent,
                        color: Colors.green,
                        elevation: 7.0,
                          child: Center(
                            child: Text(
                              'SIGN UP',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Montserrat'
                              ),
                            ),
                          ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Already have an account?',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                  ),
                ),
                SizedBox(width: 5.0),
                InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
                    },
                    child: Text(
                        'Log in',
                        style: TextStyle(
                          color: Colors.green,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                        )
                    )
                ),
              ],
            )
          ],
        )
    );
  }
}
