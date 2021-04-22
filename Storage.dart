import 'package:flutter/material.dart';

class storage extends StatefulWidget {
  @override
  _storageState createState() => _storageState();
}

class _storageState extends State<storage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Storage'
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Text(
              'Storage',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          )
        ],
      ),
    );
  }
}
