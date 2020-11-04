import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        IconButton(
            onPressed: (){
              Navigator.pop(context, false);
            },
            icon: Icon(
              Icons.arrow_back,
            )
        ),
        /*
        IconButton(
            onPressed: (){},
            icon: Icon(
              Icons.menu,
            )
        ),
        */
      ],
    );
  }
}