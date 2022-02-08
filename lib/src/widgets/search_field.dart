import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class SearchField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 15.0),
      child: Material(
        elevation: 5.0,
        borderRadius: BorderRadius.circular(30.0),
        child: TextField(
          decoration: InputDecoration(
              hintText: "Search any food",
              suffixIcon: Material(
                elevation: 5.0,
                borderRadius: BorderRadius.circular(30.0),
                child: Icon(Icons.search),
              ),
              border: InputBorder.none,
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 20.0, vertical: 12.0)),
          textCapitalization: TextCapitalization.none,
        ),
      ),
    );
  }
}
