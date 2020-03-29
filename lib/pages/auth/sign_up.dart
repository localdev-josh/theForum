import 'package:flutter/material.dart';
import 'package:theforum/styleguide/colors.dart';
import 'package:theforum/widgets/app_background.dart';
import 'package:theforum/widgets/page_transitions.dart';

import '../landing_page.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          AppBackground(
            firstColor: firstCircleColor,
            secondColor: secondCircleColor,
            thirdColor: thirdCircleColor,
          ),
          Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 100.0, left: 20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Container(
                            color: Colors.deepOrangeAccent,
                            child: Text(
                              "Hello",
                              style: TextStyle(
                                  fontSize: 80.0, fontWeight: FontWeight.bold),
                            )),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          "There",
                          style: TextStyle(
                              fontSize: 80.0, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 7.0,
                        ),
                        Text(
                          ".",
                          style: TextStyle(
                              fontSize: 80.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.green),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 100.0, left: 20.0, right: 50.0),
                child: Column(
                  children: <Widget>[
                    TextField(
                      obscureText: false,
                      autocorrect: true,
                      autofocus: false,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: Colors.black87, fontWeight: FontWeight.bold),
                      decoration: new InputDecoration(
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black87)),
                          labelText: "Enter email address",
                          labelStyle: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 17.0,
                              color: Colors.grey),
                          contentPadding: const EdgeInsets.only(
                              top: 20.0, bottom: 20.0, left: 20.0),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey))),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 25.0),
                      child: TextField(
                        obscureText: false,
                        autocorrect: true,
                        autofocus: false,
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Colors.black87, fontWeight: FontWeight.bold),
                        decoration: new InputDecoration(
                            border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black87)),
                            helperText: "e.g  strype.name",
                            labelText: "Chatroom URL",
                            labelStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 17.0,
                                color: Colors.grey),
                            contentPadding: const EdgeInsets.only(
                                top: 20.0, bottom: 20.0, left: 20.0),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey))),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 90.0,
                padding: const EdgeInsets.only(top: 30.0, left: 20.0, right: 245.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      SizeRoute(page : LandingPage()),
                    );
                  },
                  child: Material(
                    elevation: 4.0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Center(
                            child: Text(
                              "Verify",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 21.0),
                            )),
                        SizedBox(
                          width: 5.0,
                        ),
                        Container(
                            margin: const EdgeInsets.only(top: 5.0),
                            child: Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.white,
                              size: 15.0,
                            ))
                      ],
                    ),
                    color: Colors.deepOrange,
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
