import 'package:alpha_green_smart_move/screens/profile/components/top_bar.dart';
import 'package:flutter/material.dart';

import '../../../costants.dart';
import 'custom_clipper.dart';


class StackContainer extends StatelessWidget {

  const StackContainer({Key key}): super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: 320,
      child: Stack(
        children: <Widget>[
          Container(),
          ClipPath(
            clipper: MyCustomClipper(),
            child: Container(
              height: size.height*0.35,
              decoration: BoxDecoration(
                gradient: RadialGradient(
                  colors: <Color>[
                    kPrimaryColor,
                    kPrimaryLightColor,
                  ],
                ),
              ),
              //color: Colors.red,
            ),
          ),
          Align(
            alignment: Alignment(0,1),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  backgroundImage: AssetImage("assets/images/male_avatar.png"),
                  maxRadius: 80,
                ),
                Text(
                  "Profile name",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Il mio info",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          TopBar(),
        ],
      ),
    );
  }
}

