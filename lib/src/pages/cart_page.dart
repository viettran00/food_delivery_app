import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:food_delivery_app/src/pages/login_page.dart';
import 'package:food_delivery_app/src/widgets/order_cart.dart';

class CartPage extends StatefulWidget {
  @override
  _CartPageState createState() => _CartPageState();
}


_gotoLoginPage(context){
  final pageRoute = MaterialPageRoute(builder: (context){
    return LoginPage();
  });
  Navigator.of(context).push(pageRoute);
  print("goto login");
}
class _CartPageState extends State<CartPage> {
  final _textStyle =
  TextStyle(fontSize: 16.0, color: Colors.grey, fontWeight: FontWeight.bold);
  final _numberStyle = TextStyle(fontSize: 16.0,color: Colors.black,fontWeight: FontWeight.bold);
  @override
  Widget build(BuildContext context) {
    Widget _buildTotalContainer = Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0)
      ),
      child: Container(
          height: 200.0,
          padding: EdgeInsets.all(10.0),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    "Cart Total",
                    style: _textStyle,
                  ),
                  Spacer(),
                  Text("23.0",style: _numberStyle,)
                ],
              ),
              SizedBox(height: 5.0,),
              Row(
                children: [
                  Text(
                    "Discount",
                    style: _textStyle,
                  ),
                  Spacer(),
                  Text("3.0",style: _numberStyle,)
                ],
              ),
              SizedBox(height: 5.0,),
              Row(
                children: [
                  Text(
                    "Tax",
                    style: _textStyle,
                  ),
                  Spacer(),
                  Text("0.50",style: _numberStyle,)
                ],
              ),
              Divider(thickness: 2.0),
              SizedBox(height: 10.0,),
              Row(
                children: [
                  Text(
                    "SubTotal",
                    style: _textStyle,
                  ),
                  Spacer(),
                  Text("26.50",style: _numberStyle)
                ],
              ),
              SizedBox(height: 10.0,),
              Row(
                children: [
                  Expanded(child: Container(
                    child: ElevatedButton(
                        onPressed: (){
                          _gotoLoginPage(context);
                        },
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25.0)
                            )
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Text(
                            "Proceed to Checkout",
                            style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold
                            ),

                          ),
                        )
                    ),
                  ))
                ],
              )

            ],
          )),
    );
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Your Food Cart",
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
        ),
        body: ListView(
          children: [
            OrderCart(),
            // OrderCart(),
            // OrderCart(),
            // OrderCart(),
            // OrderCart(),
            // OrderCart(),
            // OrderCart(),
            ],
        ),
      bottomNavigationBar: _buildTotalContainer,
    );
  }
}
