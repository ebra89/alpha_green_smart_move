import 'package:alpha_green_smart_move/screens/welcome/components/body.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Body(),
        ),
    );
  }
}
