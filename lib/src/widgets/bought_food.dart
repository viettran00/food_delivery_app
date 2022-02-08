import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:food_delivery_app/src/models/food.dart';

class BoughtFood extends StatelessWidget {
  final fiveStar = Row(
    children: <Widget>[
      Icon(
        Icons.star,
        color: Colors.blueAccent,
        size: 20.0,
      ),
      Icon(
        Icons.star,
        color: Colors.blueAccent,
        size: 20.0,
      ),
      Icon(
        Icons.star,
        color: Colors.blueAccent,
        size: 20.0,
      ),
      Icon(
        Icons.star,
        color: Colors.blueAccent,
        size: 20.0,
      ),
      Icon(
        Icons.star,
        color: Colors.blueAccent,
        size: 20.0,
      ),
    ],
  );
  final Food food;

  BoughtFood({this.food});
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20.0),
      child: Stack(
        children: <Widget>[
          Container(
            height: 220,
            width: 350,
            child: Image.asset(
              food.imagePath,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
              left: 0.0,
              bottom: 0.0,
              child: Container(
                height: 80,
                width: 350,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Colors.black12, Colors.black],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter)),
              )),
          Positioned(
              left: 10.0,
              bottom: 10.0,
              right: 10.0,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        food.foodName,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 22.0,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      fiveStar,
                    ],
                  ),

                  Text(
                    // ${food.ratings}
                    "0 Reviews",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                        fontWeight: FontWeight.w300
                    ),),
                  Column(
                    children: <Widget>[
                      Text(
                          food.price.toString(),
                          style: TextStyle(
                              color: Colors.orange,
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold
                          )),
                      Text(
                          "Min Order",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.0,
                              fontWeight: FontWeight.w300
                          )
                      ),
                    ],
                  )
                ],
              )
          )
        ],
      ),
    );
  }
}
