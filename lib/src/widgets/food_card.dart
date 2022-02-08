import 'package:flutter/material.dart';
import 'package:food_delivery_app/src/models/category.dart';

class FoodCard extends StatelessWidget {
  final Category category;

  FoodCard({this.category});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 15.0),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0)
        ),
        elevation: 2.0,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            children: <Widget>[
              Image.asset(category.imagePath,height: 60,),
              SizedBox(width: 20,),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(category.categoryName,style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold),),
                  Text("${category.numberOfItems} Kinds",style: TextStyle(fontSize: 14.0,fontWeight: FontWeight.w500,fontStyle: FontStyle.italic),),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
