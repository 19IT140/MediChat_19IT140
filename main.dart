
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:medichat/LoginScreen.dart';
import 'package:firebase_core/firebase_core.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    home: MyApp(),
  ));
}
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Color primaryColor=Color(0xff18203d);
  Color secondaryColor=Color(0xff232c51);
  Color logoGreen=Color(0xff25bcbb);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: primaryColor,
        body: Container(
          margin: EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              //We take the image from the assets
              CircleAvatar(
                radius: 100.0,
                backgroundImage: AssetImage('images/medical.png'),
              ),
              SizedBox(
                height: 20,
              ),
              //Texts and Styling of them
              Text(
                'Welcome to MediChat !',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 28),
              ),
              SizedBox(height: 20),
              Text(
                'A one-stop portal for you to learn the latest technologies from SCRATCH',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              SizedBox(
                height: 30,
              ),
              //Our MaterialButton which when pressed will take us to a new screen named as
              //LoginScreen
              MaterialButton(
                elevation: 0,
                height: 50,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(
                          builder: (context) => LoginScreen(),
                      )
                  );

                },
                color: logoGreen,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('Get Started',
                        style: TextStyle(color: Colors.white, fontSize: 20)),
                    Icon(Icons.arrow_forward_ios)
                  ],
                ),
                textColor: Colors.white,
              )
            ],
          ),
        ),
      );
  }
}

