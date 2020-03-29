import 'package:flutter/material.dart';
import 'package:theforum/model/forum.dart';
import 'package:theforum/model/topic.dart';
import 'package:theforum/styleguide/colors.dart';
import 'package:theforum/styleguide/text_styles.dart';
import 'package:theforum/widgets/app_background.dart';
import 'package:theforum/widgets/label_value_widget.dart';

class DetailsPage extends StatelessWidget {
  final Forum forum;

  DetailsPage({this.forum});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          AppBackground(
            firstColor: firstOrangeCircleColor,
            secondColor: secondOrangeCircleColor,
            thirdColor: thirdOrangeCircleColor,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 60.0,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25.0),
                child: Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 40.0,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25.0, right: 100.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    labelValueWidget(
                      value: forum.topics.length.toString(),
                      label: "topics",
                      labelStyle: whiteLabelTextStyle,
                      valueStyle: whiteValueTextStyle,
                    ),
                    labelValueWidget(
                      value: forum.threads,
                      label: "threads",
                      labelStyle: whiteLabelTextStyle,
                      valueStyle: whiteValueTextStyle,
                    ),
                    labelValueWidget(
                      value: forum.subs,
                      label: "subs",
                      labelStyle: whiteLabelTextStyle,
                      valueStyle: whiteValueTextStyle,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
//              ClipRRect(
//                  borderRadius:
//                      BorderRadius.only(topLeft: Radius.circular(40.0)),
//                  child: Image.asset(forum.imagePath)),
            ],
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: ClipRRect(
              child: Container(
                height: 650,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.only(top: 60.0, left: 38.0, right: 18.0, bottom: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Topics",
                        style: subHeadingStyle,
                      ),
                      Expanded(
                        child: ListView(
                          shrinkWrap: true,
                          children: <Widget>[
                            TopicsTile(
                              topic: forum.topics[0],
                            ),
                            Divider(
                              color: Colors.grey,
                              height: 10.0,
                            ),
                            TopicsTile(
                              topic: forum.topics[1],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              borderRadius: BorderRadius.only(topLeft: Radius.circular(60.0)),
            ),
          ),
          Positioned(
            bottom: 560.0,
            right: 18.0,
            child: Material(
              elevation: 10.0,
              color: Colors.white,
              shape: CircleBorder(),
              child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    forum.rank,
                    style: rankBigStyle,
                  )),
            ),
          ),
        ],
      ),
    );
  }
}

class TopicsTile extends StatelessWidget {
  final Topic topic;

  TopicsTile({this.topic});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Text(
                topic.question,
                style: topicQuestionTextStyle,
              ),
              Spacer(),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    color: primaryColor),
                child: Text(
                  topic.answerCount,
                  style: answerCountTextStyle,
                ),
              )
            ],
          ),
          SizedBox(height: 7.0,),
          Text(topic.recentAnswer, style: topicAnswerTextStyle,)
        ],
      ),
    );
  }
}
