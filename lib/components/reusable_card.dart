import 'package:flutter/material.dart';

const cardMargins = EdgeInsets.all(15.0);
var borderRadius = BorderRadius.circular(10.0);

class ReusableCard extends StatelessWidget {
  //optional property new color when we select a widget
  final Color colour;
  final Widget cardChild;
  //setting a function to pass
  final Function onPress;

  //constructor with that new "colour" but required
  ReusableCard({@required this.colour, this.cardChild, this.onPress});

  @override
  Widget build(BuildContext context) {
    //
    return GestureDetector(
      //passing a function onPress for onTap property
      onTap: onPress,
      child: Container(
        margin: cardMargins,
        decoration: BoxDecoration(
          borderRadius: borderRadius,
          color: colour,
        ),
        child: cardChild,
      ),
    );
  }
}
