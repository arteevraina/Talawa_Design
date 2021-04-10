// Package imports.
import 'package:flutter/material.dart';
import 'package:flag/flag.dart';

// Local imports.
import 'package:talawa_design/constants/text_styles.dart';
import 'package:talawa_design/constants/colors.dart';
import 'package:talawa_design/views/authentication/set_url_screen.dart';

class SelectLanguage extends StatelessWidget {
  final bool isNavigatedFromSplash;
  final bool isNavigatedFromSideDrawer;

  SelectLanguage(this.isNavigatedFromSplash, this.isNavigatedFromSideDrawer);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldColor,
      appBar: AppBar(
        backgroundColor: appBarColor,
        title: Row(
          children: [
            CircleAvatar(
              child: Image.asset(
                "assets/logo.png",
              ),
            ),
            SizedBox(
              width: 10.0,
            ),
            Text(
              "Select Language",
              style: appBarTextStyle(),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: Colors.white,
              width: MediaQuery.of(context).size.width * 0.8,
              height: MediaQuery.of(context).size.height * 0.8,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView.separated(
                    physics: BouncingScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              if (isNavigatedFromSideDrawer &&
                                  !isNavigatedFromSplash) {
                                Navigator.pop(context);
                              } else {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => SetURLScreen(),
                                  ),
                                );
                              }
                            },
                            child: Row(
                              children: [
                                Flag(
                                  (index % 5 == 0)
                                      ? 'in'
                                      : (index % 5 == 1)
                                          ? 'gb'
                                          : (index % 5 == 2)
                                              ? 'cn'
                                              : (index % 5 == 3)
                                                  ? 'br'
                                                  : (index % 5 == 4)
                                                      ? 'pk'
                                                      : null,
                                  height: 40,
                                  width: 40,
                                ),
                                SizedBox(
                                  width: 10.0,
                                ),
                                Text(
                                  (index % 5 == 0)
                                      ? 'Hindi'
                                      : (index % 5 == 1)
                                          ? 'English'
                                          : (index % 5 == 2)
                                              ? 'Chinese'
                                              : (index % 5 == 3)
                                                  ? 'Portuguese'
                                                  : (index % 5 == 4)
                                                      ? 'Urdu'
                                                      : null,
                                  style: messageDescriptionTextStyle(),
                                )
                              ],
                            ),
                          ),
                        ],
                      );
                    },
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        height: 10.0,
                      );
                    },
                    itemCount: 20),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
