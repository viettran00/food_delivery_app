import 'package:flutter/material.dart';
import 'package:food_delivery_app/src/pages/login_page.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _userController = new TextEditingController();
  final _emailController = new TextEditingController();
  final _passController = new TextEditingController();
  final _rePassController = new TextEditingController();

  bool _isPassObscureText = true;
  bool _isRePassObscureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        minimum: EdgeInsets.symmetric(horizontal: 20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("CREATE AN ACCOUNT",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40.0),),
                TextField(
                  decoration: InputDecoration(
                      labelText: "Username",
                      border: new OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0)
                      )
                  ),
                  controller: _userController,
                ),
                SizedBox(height: 15.0,),
                TextField(
                  decoration: InputDecoration(
                      labelText: "Email",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0)
                      )
                  ),
                  controller: _emailController,
                  keyboardType: TextInputType.emailAddress,
                ),
                SizedBox(height: 15.0,),
                Stack(
                    children:[
                      TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            labelText: "Password"
                        ),
                        controller: _passController,
                        obscureText: _isPassObscureText,
                      ),
                      Positioned(
                        right: 10.0,
                        top: 18.0,
                        child: InkWell(
                          child: Icon(
                              _isPassObscureText?
                              Icons.remove_red_eye:Icons.visibility_off
                          ),
                          onTap: (){
                            setState(() {
                              _isPassObscureText = !_isPassObscureText;
                            });
                          },
                        ),
                      )
                    ]
                ),
                SizedBox(height: 15.0,),
                Stack(
                    children:[
                      TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            labelText: "Confirm Password"
                        ),
                        controller: _rePassController,
                        obscureText: _isRePassObscureText,
                      ),
                      Positioned(
                        right: 10.0,
                        top: 18.0,
                        child: InkWell(
                          child: Icon(
                              _isRePassObscureText?
                              Icons.remove_red_eye:Icons.visibility_off
                          ),
                          onTap: (){
                            setState(() {
                              _isRePassObscureText=!_isRePassObscureText;
                            });
                          },
                        ),
                      )
                    ]
                ),
                SizedBox(height: 15.0,),
                Row(
                  children: [
                    Expanded(
                        child:ElevatedButton(
                            onPressed: (){},
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0)
                                ),
                                padding: EdgeInsets.all(15.0)
                            ),
                            child: Text("Sign Up")
                        )
                    )
                  ],
                ),
                SizedBox(height: 10.0,),
                Row(
                  children: [
                    Text("You already have an account?",style: TextStyle(fontSize: 16.0),),
                    SizedBox(width: 5.0,),
                    InkWell(
                      onTap: (){
                        final pageRoute = new MaterialPageRoute(builder: (context) => LoginPage());
                        Navigator.of(context).push(pageRoute);
                      },
                      child: Text("Login Now",style:TextStyle(
                          fontSize: 16.0, color: Colors.blue
                      )),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
