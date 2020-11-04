import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget child;
  const Background({Key key,@required this.child}): super(key: key);

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
            top: 150,
            child: Container(
              child: Image.asset("assets/images/scooter_guy.png",
                width: size.width*1.1,
              ),
            ),
          ),
          Positioned(
            top: 30,
            left: 10,
            child: Container(
              child: Image.asset("assets/images/cloud.png",
                width: size.width*.3,
              ),
            ),
          ),
          Positioned(
            bottom: 10,
            left: 0,
            child: Container(
              child: Image.asset("assets/images/ston.png",
                width: size.width*.3,
              ),
            ),
          ),
          Positioned(
            top: 24,
            left: 70,
            child: Container(
              child: Image.asset("assets/images/sun.png",
                width: size.width*.2,
              ),
            ),
          ),
          Positioned(
            top: 50,
            left: 120,
            child: Container(
              child: Image.asset("assets/images/cloud.png",
                width: size.width*.3,
              ),
            ),
          ),
          child,
        ],
      ),
    );
  }
}
