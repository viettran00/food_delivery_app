import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:food_delivery_app/src/widgets/small_button.dart';

class ExplorePage extends StatefulWidget {
  const ExplorePage({Key key}) : super(key: key);

  @override
  _ExplorePageState createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Center(
                child: Text("All Food Items",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 22.0))),
            Container(
              height: 150.0,
              margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey,
                      offset: Offset(0, 2),
                      blurRadius: 4.0),
                ],
              ),
              child: Row(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    margin: EdgeInsets.only(left: 10.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        image: DecorationImage(
                          image: AssetImage(
                            "assets/images/breakfast.jpeg",
                          ),
                          fit: BoxFit.cover,
                        )),
                  ),
                  Column(
                    children: [
                      SizedBox(height: 10.0,),
                      Center(
                        child: Text(
                          "Name of Food",
                          style: TextStyle(
                            fontSize: 18.0, fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 10.0,right: 10.0,left: 10.0),
                        height: 80,
                        width: MediaQuery.of(context).size.width * 1.0 - 130.0,
                        child: Text("This is the description of food item, are you already to buy it",
                        style: TextStyle(color: Colors.black),),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 1.0 - 130.0,
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        child: Row(
                          children: [
                            Text("\$ 9.0",
                            style: TextStyle(
                              color: Colors.blue,
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold
                            ),),
                            Spacer(),
                            SmallButton(
                              title: "Buy",
                            )
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
