// Package imports.
import 'package:flutter/material.dart';

// Local imports.
import 'package:talawa_design/constants/text_styles.dart';
import 'package:talawa_design/constants/colors.dart';
import 'package:talawa_design/components/text_box.dart';
import 'package:talawa_design/views/register_screen.dart';
import 'package:talawa_design/views/wrapper.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
                  alignment: Alignment.topCenter,
                  child: Image(
                    image: AssetImage("assets/logo.png"),
                    width: MediaQuery.of(context).orientation ==
                            Orientation.portrait
                        ? MediaQuery.of(context).size.width * 0.8
                        : MediaQuery.of(context).size.width * 0.6,
                    height: MediaQuery.of(context).orientation ==
                            Orientation.portrait
                        ? MediaQuery.of(context).size.height * 0.4
                        : MediaQuery.of(context).size.height * 0.6,
                  ),
                ),
              ),
            ],
          ),
          Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Talawa",
                    style: loginScreenTitleTextStyle(),
                  ),
                  Text(
                    "Login",
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
                    height: 20.0,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Wrapper(),
                        ),
                      );
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 15),
                      width: MediaQuery.of(context).orientation ==
                              Orientation.portrait
                          ? MediaQuery.of(context).size.width * 0.4
                          : MediaQuery.of(context).size.width * 0.2,
                      height: MediaQuery.of(context).orientation ==
                              Orientation.portrait
                          ? MediaQuery.of(context).size.height * 0.08
                          : MediaQuery.of(context).size.height * 0.15,
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
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => RegisterScreen(),
                        ),
                      );
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Not Registered ?",
                          style: loginScreenTextLeftTextStyle(),
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Text(
                          "Sign Up !",
                          style: loginScreenTextRightTextStyle(),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
