import 'package:flutter/material.dart';

class SmallButton extends StatelessWidget {
  String title;
  SmallButton({this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
      EdgeInsets.symmetric(horizontal: 18.0, vertical: 5.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          border: Border.all(color: Colors.blue, width: 2.0)),
      child: Text(
      "$title",
      style: TextStyle(fontWeight: FontWeight.bold),
    ),
    );
  }
}



