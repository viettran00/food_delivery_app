import 'package:flutter/material.dart';

class HomeTopInfo extends StatelessWidget {
  final _textStyle = TextStyle(fontWeight: FontWeight.bold, fontSize: 35.0);
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("What would", style: _textStyle),
            Text("you like to eat?", style: _textStyle)
          ],
        ),
        Icon(
          Icons.notifications_none,
          size: 35.0,
          color: Colors.blueAccent,
        )
      ],
    );
  }
}
