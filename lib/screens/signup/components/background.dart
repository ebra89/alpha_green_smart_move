import 'package:alpha_green_smart_move/animation/fade_animation.dart';
import 'package:flutter/material.dart';



class Background extends StatelessWidget {

  final Widget child;
  const Background({Key key, @required this.child}):super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
            top: 40,
            child: FadeAnimation(1,Container(
              child: Image.asset("assets/images/roket.png",
                width:size.width,
              ),
            )),
          ),
          Positioned(
            top: 0,
            left: 0,
            child: FadeAnimation(0.5,Container(
              child: Image.asset("assets/images/cornel_top_left.png",
                width:size.width*0.25,),
            )),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: FadeAnimation(0.5,Container(
              child: Image.asset("assets/images/cornel_bottom_left.png",
                width:size.width*0.20,),
            )),
          ),
          child,
        ],
      ),
    );
  }
}
