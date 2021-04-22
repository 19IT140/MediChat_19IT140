import 'package:flutter/material.dart';
import 'Constant.dart';

class GenderCard extends StatelessWidget {
  GenderCard({@required this.text,this.icon});
  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 80.0,
          color: Colors.white,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          text,
          style: kLableTextStyle
        )
      ],
    );
  }
}
