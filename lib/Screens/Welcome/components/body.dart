import 'package:flutter/material.dart';
import 'package:snuapp/Screens/Login/login_screen.dart';
import 'package:snuapp/Screens/Signup/signup_screen.dart';
import 'package:snuapp/Screens/Welcome/components/background.dart';
import 'package:snuapp/components/rounded_button.dart';
import 'package:snuapp/constants.dart';
import 'package:flutter_svg/svg.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // This size provide us total height and width of our screen
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Column(
              children: [
                Text(
                  "Hola Kgpians",

                ),
                SizedBox(height: size.height * 0.01),
                Text(
                  "WELCOME TO SNU",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),

              ],
            ),
            SizedBox(height: size.height * 0.05),
            Center(
              child : Image(
                image:AssetImage('assets/images/kgp.png'),
                height: 300 ,
                width: 300,
              )
            ),
           // SizedBox(height: size.height * 0.05),
            RoundedButton(
              text: "LOGIN",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
              },
            ),
            RoundedButton(
              text: "SIGN UP",
              color: kPrimaryLightColor,
              textColor: Colors.black,
              press: () {
                Navigator.push( //
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
    );
  }
}
