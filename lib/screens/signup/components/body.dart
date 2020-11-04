import 'package:alpha_green_smart_move/screens/login/components/have_an_account_check.dart';
import 'package:alpha_green_smart_move/screens/login/components/rounded_input_field.dart';
import 'package:alpha_green_smart_move/screens/login/components/rounded_password_field.dart';
import 'package:alpha_green_smart_move/screens/login/login_screen.dart';
import 'package:alpha_green_smart_move/screens/signup/components/background.dart';
import 'package:alpha_green_smart_move/screens/signup/components/social_divider.dart';
import 'package:alpha_green_smart_move/screens/signup/components/social_icons.dart';
import 'package:alpha_green_smart_move/screens/welcome/components/roundedButton.dart';
import 'package:flutter/material.dart';


class Body extends StatelessWidget {
  final Widget child;
  const Body({Key key, @required this.child}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: size.height*0.50,),
            RoundedInputField(
              hintText: "Your Email",
              onChanged: (value){},
            ),
            RoundedPasswordField(
              onChanged: (value){},
            ),
            RoundedButton(
              text: "Sign up",
              press: (){},
            ),
            HaveAnAccountCheck(
              login: false,
              press: (){
                Navigator.push(
                  context, MaterialPageRoute(
                    builder: (context){
                      return LoginScreen();
                    }
                ),
                );
              },
            ),
            SocialDivider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SocialIcon(
                  iconSrc: "assets/images/facebook_512px.png",
                  press: (){
                    print("facebook click");
                  },
                ),
                SocialIcon(
                  iconSrc: "assets/images/google_512px.png",
                  press: (){
                    print("google click");
                  },
                ),
                SocialIcon(
                  iconSrc: "assets/images/twitter_512px.png",
                  press: (){
                    print("twitter click");
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
