import 'package:alpha_green_smart_move/screens/home/home_screen.dart';
import 'package:alpha_green_smart_move/screens/login/components/background.dart';
import 'package:alpha_green_smart_move/screens/login/components/rounded_input_field.dart';
import 'package:alpha_green_smart_move/screens/login/components/rounded_password_field.dart';
import 'package:alpha_green_smart_move/screens/signup/signup_screen.dart';
import 'package:alpha_green_smart_move/screens/welcome/components/roundedButton.dart';
import 'package:flutter/material.dart';

import 'have_an_account_check.dart';


class Body extends StatelessWidget {

  const Body({Key key,}): super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return  Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: size.height*0.4,),
            //Text("LOGIN",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),),
            RoundedInputField(
              hintText: "Your Email",
              onChanged: (value){},
            ),
            RoundedPasswordField(
              onChanged: (value){},
            ),
            RoundedButton(
              text: "LOGIN",
              press: (){
                //TODO
                // per ora per accedere al homePage
                Navigator.push(context, MaterialPageRoute(builder: (context){return HomeScreen();}));
              },
            ),
            SizedBox(height: size.height*0.02,),
            HaveAnAccountCheck(
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

