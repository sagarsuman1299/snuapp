import 'package:flutter/material.dart';
import 'package:snuapp/components/text_field_container.dart';
import 'package:snuapp/constants.dart';

///////////Rounded empty text fileds where user fill data//////////////
//////Faltu url: https://docs.google.com/document/d/1N3BchEBDIvELrKtr8-1OdSYvAtv65GbOM-F10AoA0EE/edit#
class RoundedInputField extends StatefulWidget {
  final String hintText;
  final IconData icon;

  final ValueChanged<String> onChanged;

  final validator;
  const RoundedInputField({
    Key key,
    this.hintText,
    this.icon = Icons.person,
    this.onChanged,this.validator
  }) : super(key: key);

  @override
  _RoundedInputFieldState createState() => _RoundedInputFieldState();
}

class _RoundedInputFieldState extends State<RoundedInputField> {
  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(



      children: TextFormField(
        onChanged: widget.onChanged,
        validator: (value)
        {
          if(value.isEmpty){ return "Email is empty";}
          if(!value.contains("@")){return "invalid email";}
          else{ return null; }
        },
        cursorColor: kPrimaryColor,
        decoration: InputDecoration(
          icon: Icon(
            widget.icon,
            color: kPrimaryColor,
          ),

          hintText: widget.hintText,
          border: InputBorder.none,
        ),
      ),




    );
  }
}
