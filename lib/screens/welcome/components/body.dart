import 'package:alpha_green_smart_move/screens/login/login_screen.dart';
import 'package:alpha_green_smart_move/screens/signup/signup_screen.dart';
import 'package:alpha_green_smart_move/screens/welcome/components/roundedButton.dart';
import 'package:flutter/material.dart';

import '../../../costants.dart';
import 'background.dart';


class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: size.height*0.5,),
            RoundedButton(
              text: "LOGIN",
              press: (){Navigator.push(context,MaterialPageRoute(builder: (context){return LoginScreen();}),);},
            ),
            RoundedButton(
              text: "SIGN UP",
              color: kPrimaryLightColor,
              textColor: Colors.black,
              press: (){
                Navigator.push(
                  context,MaterialPageRoute(
                    builder: (context){return SignUpScreen();
                    }
                ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
