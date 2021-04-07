// Package imports.
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// Local imports.
import 'package:talawa_design/constants/text_styles.dart';
import 'package:talawa_design/constants/colors.dart';
import 'package:talawa_design/components/text_box.dart';

class RegisterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return Scaffold(
      backgroundColor: scaffoldColor,
      body: Stack(
        children: [
          Column(
            children: [
              SizedBox(
                height: 40.0,
              ),
              Opacity(
                opacity: 0.3,
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Image(
                    image: AssetImage("assets/logo.png"),
                  ),
                ),
              ),
            ],
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Talawa",
                  style: loginScreenTitleTextStyle(),
                ),
                Text(
                  "Register",
                  style: loginScreenSubTitleTextStyle(),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20.0,
                  ),
                  child: TextBox(
                    "Enter your email",
                    Icon(
                      Icons.email,
                      color: titleColorLoginScreen,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20.0,
                  ),
                  child: TextBox(
                    "Enter your password",
                    Icon(
                      Icons.security,
                      color: titleColorLoginScreen,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20.0,
                  ),
                  child: TextBox(
                    "Confirm Password",
                    Icon(
                      Icons.security,
                      color: titleColorLoginScreen,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 15),
                  width: MediaQuery.of(context).size.width * 0.4,
                  height: MediaQuery.of(context).size.height * 0.08,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        buttonColorSetUrl,
                        buttonColorGradientSetUrl,
                      ],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    ),
                    // color: buttonColor,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Center(
                    child: Text(
                      "Login",
                      style: loginScreenButtonTextStyle(),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already Registered ?",
                      style: loginScreenTextLeftTextStyle(),
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    Text(
                      "Login !",
                      style: loginScreenTextRightTextStyle(),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
