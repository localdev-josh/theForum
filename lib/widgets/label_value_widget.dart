import 'package:flutter/material.dart';

class labelValueWidget extends StatelessWidget {
  final String label, value;
  final TextStyle labelStyle, valueStyle;

  labelValueWidget({this.label, this.value, this.labelStyle, this.valueStyle});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(value, style: valueStyle,),
        SizedBox(height: 3.0,),
        Text(label, style: labelStyle,)
      ],
    );
  }
}