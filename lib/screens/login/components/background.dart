import 'package:alpha_green_smart_move/animation/fade_animation.dart';
import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget child;
  const Background({Key key,@required this.child}):super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
            top: 100,
            child: FadeAnimation(0,Container(
              child: Image.asset("assets/images/ragazzo_in_monopattino.png",
                width: size.width,
              ),
            )),
          ),
          Positioned(
            top: 30,
            left: 40,
            child: FadeAnimation(0,Container(
              child: Image.asset("assets/images/sun.png",
                width: size.width*0.2,
              ),
            )),
          ),
          Positioned(
            top: 100,
            left: 30,
            child: FadeAnimation(0,Container(
              child: Image.asset("assets/images/cloud1.png",
                width: size.width*0.3,
              ),
            )),
          ),
          Positioned(
            top: 110,
            left: 50,
            child: FadeAnimation(0,Container(
              child: Image.asset("assets/images/cloud2.png",
                width: size.width*0.3,
              ),
            )),
          ),
          Positioned(
            top: 120,
            left: 10,
            child: FadeAnimation(0,Container(
              child: Image.asset("assets/images/cloud3.png",
                width: size.width*0.3,
              ),
            )),
          ),
          child,
        ],
      ),
    );
  }
}
