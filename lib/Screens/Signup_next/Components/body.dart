import 'package:flutter/material.dart';
import 'package:snuapp/Screens/Login/login_screen.dart';
import 'package:snuapp/Screens/Signup_next/';

import 'package:snuapp/components/already_have_an_account_acheck.dart';
import 'package:snuapp/components/rounded_button.dart';
import 'package:snuapp/components/rounded_input_field.dart';
import 'package:flutter_svg/svg.dart';



class Body extends StatefulWidget {

  @override
  _BodyState createState() => _BodyState();
}
DateTime _fromDate = DateTime.now();
String initValue="Birth Of Date";
bool isDateSelected= false;
DateTime birthDate; // instance of DateTime
String birthDateInString;




class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Create Account",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.03),
            SvgPicture.asset(
              "assets/icons/signup.svg",
              height: size.height * 0.20,
            ),
            RoundedInputField(
              hintText: "Your Full Name",
              onChanged: (value) {
              },
            ),
            SizedBox(height: size.height * 0.02),
            RoundedInputField(
              hintText: "Your University Roll no",
              onChanged: (value) {
              },
            ),
            SizedBox(height: size.height * 0.02),
            RoundedInputField(
              hintText: "Your Hall Name",
              onChanged: (value) {
              },
            ),
            SizedBox(height: size.height * 0.02),
            GestureDetector(
                child: new Icon(Icons.calendar_today, color : Colors.deepPurple,size: 40,),

                onTap: ()async{
                  final datePick= await showDatePicker(
                    context: context,
                    initialDate: new DateTime.now(),
                    firstDate: new DateTime(1900),
                    lastDate: new DateTime(2100),
                    initialDatePickerMode: DatePickerMode.year,
                  );
                  if(datePick!=null && datePick!=birthDate){
                    setState(() {
                      birthDate=datePick;
                      isDateSelected=true;
                      birthDateInString = "${birthDate.month}/${birthDate.day}/${birthDate.year}";
                    });
                  }
                }
            ),
            SizedBox(height: size.height * 0.01),

            Text(isDateSelected ? "$birthDateInString":initValue, style:  TextStyle(fontWeight: FontWeight.bold,fontSize: 20,
              foreground: Paint()
                ..style = PaintingStyle.stroke
                ..strokeWidth = 1.2
                ..color = Colors.deepPurple[700],),
            ),



            SizedBox(height: size.height * 0.02),


            RoundedButton(
              text: "Create Account",
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
          ],
        ),
      ),
    );
  }
}