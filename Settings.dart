import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Google_sign_in.dart';

class settings extends StatefulWidget {
  @override
  _settingsState createState() => _settingsState();
}

class _settingsState extends State<settings> {
  @override
  Widget build(BuildContext context) {
    final user=FirebaseAuth.instance.currentUser;
    return Container(
      alignment: Alignment.center,
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Logged In',
            style: TextStyle(color: Colors.black),
          ),
          SizedBox(height: 8),
          CircleAvatar(
            maxRadius: 25,
            backgroundImage: NetworkImage(user.photoURL),
          ),
          SizedBox(height: 8),
          Text(
            'Name: ' + user.displayName,
            style: TextStyle(color: Colors.black),
          ),
          SizedBox(height: 8),
          Text(
            'Email: ' + user.email,
            style: TextStyle(color: Colors.black),
          ),
          SizedBox(height: 8),
          ElevatedButton(
            onPressed: () {
              final provider =
              Provider.of<GoogleSignInProvider>(context, listen: false);
              provider.logout();
            },
            child: Text('Logout'),
          )
        ],
      ),
    );
  }
}
