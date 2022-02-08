import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  final IconData icon;
  final String text;

  CustomListTile({this.icon,this.text});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 5.0),
      child: Row(children: [
        Icon(icon,color: Colors.blue,),
        SizedBox(width: 10.0,),
        Text(text,style: TextStyle(fontSize: 16.0,color: Colors.black)),
      ],),
    );
  }
}
