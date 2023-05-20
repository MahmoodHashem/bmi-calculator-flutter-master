
import 'package:flutter/material.dart';


class ReusableColumn extends StatelessWidget {
  ReusableColumn({this.text,this.icon });

  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon,
            size: 70.0),
        SizedBox(
          height: 15.0,
        ),
        Text(text, style: TextStyle(
          color: Color(0xFF8D8E98),
          fontSize: 18.0,
        )),
      ],

    );
  }
}