import 'package:alpha_green_smart_move/screens/info/info_screen.dart';
import 'package:alpha_green_smart_move/screens/profile/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../costants.dart';
import '../home_screen.dart';
import 'custom_tile.dart';

class CustomDrawer extends StatelessWidget {

  final Function closeDrawer;


  const CustomDrawer({Key key, this.closeDrawer}): super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(

          colors: <Color>[
            //Colors.blue[600],
            //Colors.blue[400],
            kPrimaryLightColor,
            kPrimaryLightColor
          ],
        ),
      ),

      //color: kPrimaryLightColor,
      width: size.width*0.60,
      height: size.height,
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              height: size.height,
              color: Colors.grey.withAlpha(20),
              //child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    child: new Material(
                      color: Colors.white,
                      elevation: 10.0,
                      borderRadius: BorderRadius.circular(30.0),
                      shadowColor: Color(0x002196f3),
                      child: Container(
                        child: ClipRRect(
                          borderRadius: new BorderRadius.circular(50.0),
                          child: Image(
                            image: AssetImage("assets/images/mono_xami.jpg"),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Text("Smart Move",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),),
                  SizedBox(height: 20,),
                  CustomizeTile(
                    icon: Icons.home_filled,
                    text: "HOME",
                    onTop: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>HomeScreen(),));
                      closeDrawer();
                    },
                  ),
                  CustomizeTile(
                    icon: Icons.card_giftcard,
                    text: "GIFT CARD",
                    onTop: (){},
                  ),
                  CustomizeTile(
                    icon: Icons.person,
                    text: "PROFILE",
                    onTop: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=> ProfileScreen(),));
                      closeDrawer();
                    },
                  ),
                  CustomizeTile(
                    icon: Icons.info,
                    text: "INFO",
                    onTop: (){
                      Navigator.of(context).push(MaterialPageRoute(builder:
                          (context)=> FutureProvider(
                              child: UserPage()),));
                      closeDrawer();
                    },
                  ),
                  SizedBox(height: 70),
                  CustomizeTile(
                    icon: Icons.settings,
                    text: "SETTINGS",
                    onTop: (){},
                  ),
                  CustomizeTile(
                    icon: Icons.exit_to_app,
                    text: "LOG UOT",
                    onTop: (){},
                  ),
                ],
              ),
            ),
            //),
          ],
        ),
      ),
    );
  }
}
