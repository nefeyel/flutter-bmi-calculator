import 'package:flutter/material.dart';
import '../constants.dart';

class IconContent extends StatelessWidget {
  final IconData iconData;
  final String desc;

  IconContent({this.iconData, @required this.desc});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          iconData,
          size: kIconSize,
        ),
        SizedBox(
          height: kSizedBoxHeight,
        ),
        Text(
          desc,
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}
