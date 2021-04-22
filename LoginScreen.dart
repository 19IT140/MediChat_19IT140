import 'package:firebase_auth/firebase_auth.dart';
import "package:flutter/material.dart";
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:medichat/Google_sign_in.dart';
import 'package:medichat/Screens.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}
final FirebaseAuth firebaseAuth=FirebaseAuth.instance;
final GoogleSignIn googleSignIn=GoogleSignIn();

class _LoginScreenState extends State<LoginScreen> {
  Color primaryColor=Color(0xff18203d);
  Color secondaryColor=Color(0xff232c51);
  Color logoGreen=Color(0xff25bcbb);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          resizeToAvoidBottomPadding: false,
          body :ChangeNotifierProvider(
            create: (context)=>GoogleSignInProvider(),
            child: StreamBuilder(
              stream: FirebaseAuth.instance.authStateChanges(),
              builder: (context,snapshot){
                final provider=Provider.of<GoogleSignInProvider>(context,listen: false);
                if(provider.isSigningIn){
                  return buildLoading();
                }else if(snapshot.hasData){
                  return screens();
                }
                else {
                  return Center(
                    child: Container(
                      padding: EdgeInsets.all(4.0),
                      child: OutlineButton.icon(
                          onPressed: (){
                            //final provider = Provider.of<GoogleSignInProvider>(
                            //    context, listen: false);
                            //provider.login();
                            Navigator.push(context,MaterialPageRoute(builder: (context)=>screens()));
                          },
                          label: Text(
                            'Sign In with Google',
                                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                          ),
                          shape: StadiumBorder(),
                        padding: EdgeInsets.symmetric(horizontal: 12,vertical: 8),
                        highlightedBorderColor: Colors.black,
                        borderSide: BorderSide(color: Colors.black),
                        textColor: Colors.black,
                        icon: FaIcon(FontAwesomeIcons.google,color: Colors.red,),
                      ),
                    ),
                  );
                }
              },
            ),
          )
      ),
            );


  }
  Widget buildLoading(){
    Center(
      child: CircularProgressIndicator(),
    );
  }
}

