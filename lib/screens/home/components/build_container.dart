import 'package:flutter/material.dart';

import 'custom_box.dart';

class BuildContainer extends StatelessWidget {
  final Function press;

  const BuildContainer({Key key, this.press}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 20.0),
        height: 400,
        width: 300,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: press,
            child: CustomBox(
              image:"assets/images/mono_xami.jpg",
              model:"xami",
              batteryAutonomy: "90%",
              kmAutonomy: "20 km",
            ),
          ),
        ),
      ),
    );
  }
}
