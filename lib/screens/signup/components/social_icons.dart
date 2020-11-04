import 'package:flutter/material.dart';

import '../../../costants.dart';


class SocialIcon extends StatelessWidget {
  final String iconSrc;
  final Function press;

  const SocialIcon({Key key, this.iconSrc, this.press}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 5),
        //padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          border: Border.all(
            width: 2,
            color: kPrimaryLightColor,
          ),
          shape: BoxShape.circle,
        ),
        child: Image.asset(
          iconSrc,
          height: 50,
          width: 50,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
