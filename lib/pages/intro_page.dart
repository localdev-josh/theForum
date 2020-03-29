import 'package:flutter/material.dart';
import 'package:theforum/styleguide/colors.dart';
import 'package:theforum/styleguide/text_styles.dart';
import 'package:theforum/widgets/app_background.dart';
import 'package:theforum/widgets/page_transitions.dart';

import 'auth/sign_up.dart';

class IntroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(builder: (context, constraint) {
      final height = constraint.maxHeight;
      final width = constraint.maxWidth;

      return Stack(
        children: <Widget>[
          AppBackground(
            firstColor: firstCircleColor,
            secondColor: secondCircleColor,
            thirdColor: thirdCircleColor,
          ),
          Positioned(
              left: -(width / 2.5),
              top: 0,
              bottom: height / 6,
              child: Container(
                height: height,
                width: width,
                child: Image.asset("assets/images/motaz.png",
                fit: BoxFit.contain,),
              )),
          Positioned(
              top: height / 3,
              right: 30.0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Text("Your",
                    style: TextStyle(
                    fontSize: 50.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF360303)

                  ),),
                  Text("personalized",
                    style: TextStyle(
                        fontSize: 50.0,
                        fontWeight: FontWeight.w900,
                        color: Color(0xFF360303)

                    ),),
                  Text("chatroom",
                    style: TextStyle(
                        fontSize: 50.0,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF360303)

                    ),)
                ],
              )
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 50.0,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 30.0, top: 10.0),
                child: Align(
                  alignment: Alignment.topRight,
                  child: Image.asset("assets/images/logo.png",
                    width: 80,),
                ),
              ),
              Spacer(),
              Align(
                alignment: Alignment.bottomRight,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      SlideRightRoute(page : SignUp()),
                    );
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 60.0, vertical: 25.0),
                    decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius:
                      BorderRadius.only(topLeft: Radius.circular(100.0)),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Text(
                          'Start',
                          style: buttonStyle,
                        ),
                        SizedBox(width: 10.0,),
                        Icon(Icons.arrow_forward_ios,size: 15.0, color: Colors.white,)
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      );
      }
      )
    );
  }
}
