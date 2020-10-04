import 'package:flutter/material.dart';
import 'package:snuapp/components/text_field_container.dart';
import 'package:snuapp/constants.dart';

///////////Rounded empty text fileds where user fill data//////////////
//////https://docs.google.com/document/d/1N3BchEBDIvELrKtr8-1OdSYvAtv65GbOM-F10AoA0EE/edit#
class RoundedInputField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;
  const RoundedInputField({
    Key key,
    this.hintText,
    this.icon = Icons.person,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: onChanged,
        cursorColor: kPrimaryColor,
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
