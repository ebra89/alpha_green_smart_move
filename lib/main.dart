import 'package:alpha_green_smart_move/costants.dart';
import 'package:alpha_green_smart_move/screens/welcome/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Smart Move',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
        fontFamily: GoogleFonts.openSans().fontFamily,
      ),
      home: WelcomeScreen(),
    );
  }
}

