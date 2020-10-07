import 'package:flutter/material.dart';
import 'package:snuapp/Screens/Login/components/background.dart';
import 'package:snuapp/Screens/Signup/signup_screen.dart';
import 'package:snuapp/components/already_have_an_account_acheck.dart';
import 'package:snuapp/components/rounded_button.dart';
import 'package:snuapp/components/rounded_input_field.dart';
import 'package:snuapp/components/rounded_password_field.dart';
import 'package:flutter_svg/svg.dart';

class Body extends StatefulWidget {

  Body({
    Key key,
  }) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final _globalkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Form(
        child: SingleChildScrollView(
          key: _globalkey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "LOGIN",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: size.height * 0.03),
              SvgPicture.asset(
                "assets/icons/login.svg",
                height: size.height * 0.35,
              ),
              SizedBox(height: size.height * 0.03),
              RoundedInputField(
                hintText: "Your Institute email",
                validator: (value){
                  if(value.isEmpty){ return "Email is empty";}
                  else if(!value.contains("iitkgp.ac.in"))
                  {return "invalid email";}
                  return null;
                },
                onChanged: (value) {

                 },
              ),
              RoundedPasswordField(
                onChanged: (value) {
                 },
                validator: (value)=>value.isEmpty?'Password is empty':null,
              ),
              RoundedButton(
                text: "LOGIN",
                press: () {
                  if(_globalkey.currentState.validate()){
                    //we will send data to server
                    print("sucess");
                  }
                  else{ print("failed");}
                },
              ),
              SizedBox(height: size.height * 0.03),
              AlreadyHaveAnAccountCheck(
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return SignUpScreen();
                      },
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
