import 'package:flutter/material.dart';
import 'package:snuapp/components/text_field_container.dart';
import 'package:snuapp/constants.dart';

//////password field lock,eye stuffs/////////////
bool vis=true;

class RoundedPasswordField extends StatefulWidget {
  final String hintText,errorPassword;
   final ValueChanged<String> onChanged;

  final validator;
  const RoundedPasswordField({
    Key key,
    this.onChanged,this.validator,this.errorPassword,this.hintText,
  }) : super(key: key);

  @override
  _RoundedPasswordFieldState createState() => _RoundedPasswordFieldState();
}

class _RoundedPasswordFieldState extends State<RoundedPasswordField> {
  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(

      children: TextFormField(

        obscureText: vis,
        onChanged: widget.onChanged,
        cursorColor: kPrimaryColor,
        // validator: (value)
        // {
        // },
        decoration: InputDecoration(
          hintText: widget.hintText,
          errorText: widget.errorPassword,
          icon: Icon(
            Icons.lock,
            color: kPrimaryColor,
          ),

          suffixIcon: IconButton(
            icon: Icon(vis?Icons.visibility:Icons.visibility_off,color: kPrimaryColor,),
          onPressed: (){
              setState(() {
                vis=!vis;
              });
            }
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
