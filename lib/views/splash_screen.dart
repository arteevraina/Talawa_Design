// Package imports.
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// Local imports.
import 'package:talawa_design/constants/colors.dart';
import 'package:talawa_design/constants/text_styles.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  "assets/community.jpg",
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            color: imageColorSplash,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Talawa",
                      style: spashScreenTitleTextStyle(),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.3,
                      height: MediaQuery.of(context).size.height * 0.2,
                      child: Image.asset(
                        "assets/logo.png",
                        fit: BoxFit.contain,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Divider(
                  thickness: 1.0,
                  color: dividerColorSplash,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
                child: Text(
                  "Manage your Community",
                  style: spashScreenTagLineTextStyle(),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
