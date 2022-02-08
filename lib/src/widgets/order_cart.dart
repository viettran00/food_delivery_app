import 'package:flutter/material.dart';
import 'package:food_delivery_app/src/scoped_model/food_model.dart';

class OrderCart extends StatelessWidget {

  final _shape = RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0),
      side: new BorderSide(color: Colors.grey));

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0),
      child: Card(
        shape: _shape,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.all(10.0),
                height: 80,
                width: 50,
                child: Card(
                  shape: _shape,
                  child: Column(
                    children: [
                      InkWell(
                        child: Icon(Icons.keyboard_arrow_up),
                        onTap: () {},
                      ),
                      Text("0"),
                      InkWell(
                        child: Icon(Icons.keyboard_arrow_down),
                        onTap: () {},
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10.0),
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/lunch.jpeg"),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(40.0),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black,
                          blurRadius: 10.0,
                          offset: Offset(0.0, 3.0))
                    ]),
              ),
              SizedBox(width: 20.0,),
              Container(
                height: 80,
                width: 120,
                padding: EdgeInsets.only(top: 10.0),
                child:Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Flexible(
                      child: RichText(
                        overflow: TextOverflow.ellipsis,
                        strutStyle: StrutStyle(fontSize: 16.0),
                        text: TextSpan(
                            style: TextStyle(fontWeight: FontWeight.bold,color:Colors.black ,fontSize: 16.0),
                            text:  "Grilled Chicken"),
                          // Grilled Chicken
                      ),
                    ),
                    SizedBox(height: 5.0,),
                    Text(
                      "3.0",
                      style: TextStyle(
                          color: Colors.orangeAccent
                      ),
                    ),
                    SizedBox(height: 5.0,),
                    Row(
                      children: [
                        Text("Chicken"),
                        //SizedBox(width: 5.0,),
                        Text("x",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red),),
                      ],
                    )
                  ],
                ),
              ),
              Spacer(),
              Container(
                padding: EdgeInsets.only(top: 5.0,right: 5.0),
                child: InkWell(child: Icon(Icons.cancel,color: Colors.red,),onTap: (){
                  print("delete");
                },),
              )
            ]),
      ),
    );
  }
}
