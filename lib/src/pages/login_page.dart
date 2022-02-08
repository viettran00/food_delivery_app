import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:food_delivery_app/src/pages/sign_up_page.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _isObscureText = true;
  final _textStyle = TextStyle(fontSize: 16.0, color: Colors.blue);
  final _userController = TextEditingController();
  final _passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "WELCOME",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50.0),
          ),
          SizedBox(
            height: 50.0,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            child: TextField(
              decoration: InputDecoration(
                border: new OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0)),
                labelText: "Username",
              ),
              controller: _userController,
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            child: Stack(
              children: [
                TextField(
                  decoration: InputDecoration(
                    border: new OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    labelText: "Password",
                  ),
                  obscureText: _isObscureText,
                  controller: _passController,
                ),
                Positioned(
                    right: 10.0,
                    top: 15.0,
                    child: InkWell(
                      child: Icon(_isObscureText
                          ? Icons.remove_red_eye
                          : Icons.visibility_off),
                      onTap: () {
                        setState(() {
                          _isObscureText = !_isObscureText;
                        });
                      },
                    ))
              ],
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            child: Row(
              children: [
                Text(
                  "New User?",
                  style: TextStyle(fontSize: 16.0),
                ),
                SizedBox(
                  width: 5.0,
                ),
                InkWell(
                  child: Text(
                    "Sign Up",
                    style: _textStyle,
                  ),
                  onTap: () {
                    final pageRoute = MaterialPageRoute(builder: (context) => SignUpPage());
                    Navigator.of(context).push(pageRoute);
                  },
                ),
                Spacer(),
                Text(
                  "Forgot password",
                  style: _textStyle,
                )
              ],
            ),
          ),
          SizedBox(
            height: 15.0,
          ),
          Row(
            children: [
              Expanded(
                  child: Container(
                padding: EdgeInsets.symmetric(horizontal: 15.0),
                child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25.0))),
                    child: Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Text(
                        "Login",
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold),
                      ),
                    )),
              ))
            ],
          )
        ],
      ),
    );
  }
}
