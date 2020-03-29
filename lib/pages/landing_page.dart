import 'package:flutter/material.dart';
import 'package:theforum/styleguide/colors.dart';
import 'package:theforum/styleguide/text_styles.dart';
import 'package:theforum/widgets/app_background.dart';
import 'package:theforum/widgets/horizontal_tab_layout.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          AppBackground(
            firstColor: firstCircleColor,
            secondColor: secondCircleColor,
            thirdColor: thirdCircleColor,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 50.0,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20.0, top: 10.0),
                child: Align(
                  alignment: Alignment.topRight,
                  child: Material(
                    elevation: 10.0,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.apps,
                        color: primaryColor,
                      ),
                    ),
                    color: Colors.white,
                    shape: CircleBorder(),
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              HeadingSubWidget(),
              SizedBox(
                height: 20.0,
              ),
              HorizontalTabLayout(),
              Spacer(),
              Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 60.0, vertical: 25.0),
                  decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius:
                        BorderRadius.only(topLeft: Radius.circular(40.0)),
                  ),
                  child: Text(
                    'New Topic',
                    style: buttonStyle,
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class HeadingSubWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Forum',
            style: headingStyle,
          ),
          SizedBox(
            height: 6.0,
          ),
          Text(
            'Kick-off the conversation',
            style: subHeadingStyle,
          ),
        ],
      ),
    );
  }
}
