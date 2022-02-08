import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:food_delivery_app/src/widgets/custom_listTile.dart';
import 'package:food_delivery_app/src/widgets/small_button.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool toggleNotificationState = false;
  bool toggleLocationState = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          minimum: EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Profile",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32.0),
              ),
              SizedBox(
                height: 10.0,
              ),
              Row(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50.0),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black38,
                              offset: Offset(3, 5),
                              blurRadius: 3)
                        ],
                        image: DecorationImage(
                            image: AssetImage("assets/images/beer.png"),
                            fit: BoxFit.cover)),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Tran Van Viet",
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 20.0),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Text(
                        "+84394848858",
                        style: TextStyle(fontSize: 14.0, color: Colors.grey),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      SmallButton(title:"Edit")
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 15.0,
              ),
              Text(
                "Account",
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10.0,
              ),
              Card(
                elevation: 3.0,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                  child: Column(
                    children: [
                      CustomListTile(
                        icon: Icons.location_on,
                        text: "Location",
                      ),
                      Divider(
                        thickness: 1.0,
                      ),
                      CustomListTile(
                        icon: Icons.remove_red_eye,
                        text: "Change Password",
                      ),
                      Divider(
                        thickness: 1.0,
                      ),
                      CustomListTile(
                        icon: Icons.shopping_cart,
                        text: "Shipping",
                      ),
                      Divider(
                        thickness: 1.0,
                      ),
                      CustomListTile(
                        icon: Icons.payment,
                        text: "Payment",
                      ),
                      Divider(
                        thickness: 1.0,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Text(
                "Notifications",
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10.0,
              ),
              Card(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 10.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("App Notifications"),
                          Switch(
                              value: toggleNotificationState,
                              onChanged: (bool value) {
                                this.setState(() {
                                  toggleNotificationState = value;
                                });
                              })
                        ],
                      ),
                      Divider(thickness: 1.0,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Location Tracking"),
                          Switch(
                              value: toggleLocationState,
                              onChanged: (bool value) {
                                setState(() {
                                  toggleLocationState = value;
                                });
                              })
                        ],
                      ),
                      Divider(thickness: 1.0,)
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Text(
                "Other",
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10.0,
              ),
              Card(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(padding: EdgeInsets.symmetric(vertical: 10.0),child: Text("Language")),
                      Divider(thickness: 1.0,),
                      Container(padding: EdgeInsets.symmetric(vertical: 10.0),child: Text("Currency")),
                      Divider(thickness: 1.0,)
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
