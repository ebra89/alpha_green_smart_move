import 'package:flutter/material.dart';

import '../../../costants.dart';


class HaveAnAccountCheck extends StatelessWidget {
  final bool login;
  final Function press;
  const HaveAnAccountCheck({
    Key key,
    this.login = true,
    this.press,

  }):super(key: key);
  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          login ? "Non Hai Ancora Un Account? " : "Hai già un Account? ",
          style: TextStyle(color: kPrimaryColor),
        ),
        GestureDetector(
          onTap: press,
          child: Text(
            login ? "Sign Up " : "Sign In",
            style: TextStyle(
                color: kPrimaryColor,
                fontWeight:FontWeight.bold
            ),
          ),
        ),
      ],
    );
  }
}
