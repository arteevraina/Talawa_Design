// Package imports.
import 'package:flutter/material.dart';

// Local imports.
import 'package:talawa_design/constants/text_styles.dart';
import 'package:talawa_design/constants/colors.dart';
import 'package:talawa_design/components/text_box.dart';

class SetURLScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "assets/logo.png",
            width: MediaQuery.of(context).size.width * 0.3,
            height: MediaQuery.of(context).size.height * 0.3,
            fit: BoxFit.cover,
          ),
          Text(
            "Talawa",
            style: setUrlTitleTextStyle(),
          ),
          Text(
            "Verify Organization URL",
            style: setUrlTagLineTextStyle(),
          ),
          SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 8.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                  flex: 1,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(30),
                      ),
                      border: Border.all(
                        color: borderColorSetUrl,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 10.0,
                          ),
                          Text(
                            "HTTP",
                            style: setUrlTextStyle(),
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          Icon(
                            Icons.arrow_downward,
                            color: textColorSetUrl,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 8.0,
                ),
                Flexible(
                  flex: 2,
                  child: TextBox(
                    "Enter URL here",
                    Icon(
                      Icons.web,
                      color: titleColorSetUrl,
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 15),
            width: MediaQuery.of(context).size.width * 0.5,
            height: MediaQuery.of(context).size.width * 0.15,
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
                "Verify URL",
                style: setUrlButtonTextStyle(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
