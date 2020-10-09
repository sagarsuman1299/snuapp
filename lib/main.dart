import 'package:flutter/material.dart';
import 'package:snuapp/Screens/Welcome/welcome_screen.dart';
import 'package:snuapp/constants.dart';
import 'package:provider/provider.dart';
import 'package:snuapp/validation/signup_validation.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SignupValidation(),

      child: MaterialApp(
        debugShowCheckedModeBanner: false,
      title: 'Flutter Auth',
        theme: ThemeData(
          primaryColor: kPrimaryColor,
          scaffoldBackgroundColor: Colors.white,
        ),
        home: WelcomeScreen(),
      ),
    );
  }
}
