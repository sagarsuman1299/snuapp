import 'package:flutter/material.dart';
import 'package:snuapp/Screens/Login/login_screen.dart';
import 'package:snuapp/Screens/Signup/components/background.dart';
import 'package:snuapp/Screens/Signup/components/or_divider.dart';
import 'package:snuapp/components/already_have_an_account_acheck.dart';
import 'package:snuapp/components/rounded_button.dart';
import 'package:snuapp/components/rounded_input_field.dart';
import 'package:snuapp/components/rounded_password_field.dart';
import 'package:flutter_svg/svg.dart';
import 'package:share/share.dart';

class Body extends StatelessWidget {
  void share (BuildContext context)
  {
    final RenderBox box = context.findRenderObject();
    final String text= "link of app";
    Share.share(text,

        sharePositionOrigin: box.localToGlobal(Offset.zero) & box.size);
  }
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "SIGNUP",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.03),
            SvgPicture.asset(
              "assets/icons/signup.svg",
              height: size.height * 0.35,
            ),
            RoundedInputField(
              hintText: "Your Institute Email",
              onChanged: (value) {
              },
            ),

            RoundedPasswordField(
              onChanged: (value) {},
            ),
            RoundedButton(
              text: "SIGNUP",
              press: () {},
            ),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
              login: false,
              press: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
              },
            ),



            /////////////////social icons///////////
            OrDivider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RoundedButton(
                  text: "Share this app with your Friends",
                 press: () { share(context);},
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

