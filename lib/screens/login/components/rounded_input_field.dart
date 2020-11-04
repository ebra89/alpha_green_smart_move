import 'package:alpha_green_smart_move/costants.dart';
import 'package:alpha_green_smart_move/screens/login/components/text_field_container.dart';
import 'package:flutter/material.dart';


class RoundedInputField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;
  const RoundedInputField({
    Key key,
    this.icon = Icons.person,
    this.onChanged,
    this.hintText}):super(key: key);
  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        decoration: InputDecoration(
          icon: Icon(
            icon,
            color: kPrimaryColor,
          ),
          hintText: hintText,
          border: InputBorder.none,
        ),
      ),
    );
  }
}