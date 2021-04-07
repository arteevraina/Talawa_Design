// Package imports.
import 'package:flutter/material.dart';

// Local imports.
import 'package:talawa_design/constants/text_styles.dart';
import 'package:talawa_design/constants/colors.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
                "NewsFeed",
                style: appBarTextStyle(),
              ),
            ],
          ),
          actions: [
            IconButton(
              icon: Icon(
                Icons.messenger_outline,
                color: appBarTextIconColor,
              ),
              onPressed: () {},
            ),
          ],
        ),
        floatingActionButton: OrientationBuilder(
          builder: (context, orientation) {
            return Container(
              padding: EdgeInsets.symmetric(vertical: 15),
              // width: MediaQuery.of(context).size.width * 0.5,
              // height: MediaQuery.of(context).size.height * 0.09,
              width: orientation == Orientation.portrait
                  ? MediaQuery.of(context).size.width * 0.4
                  : MediaQuery.of(context).size.width * 0.2,
              height: orientation == Orientation.portrait
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
                  "Create Post",
                  style: setUrlButtonTextStyle(),
                ),
              ),
            );
          },
        ),
        body: ListView.separated(
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(10.0),
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 25.0,
                  ),
                  child: Container(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          children: [
                            CircleAvatar(
                              child: Image.asset("assets/logo.png"),
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Text(
                              "Arteev Raina",
                              style: postNameTextStyle(),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                "Post Title",
                                style: postTitleTextStyle(),
                              ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                              style: postDescriptionTextStyle(),
                            ),
                            SizedBox(
                              height: 30.0,
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(
                                0,
                                0,
                                0,
                                10.0,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.thumb_up_alt,
                                          color: nameColorNewsFeed,
                                        ),
                                        SizedBox(
                                          width: 30.0,
                                        ),
                                        Icon(
                                          Icons.comment,
                                          color: nameColorNewsFeed,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    child: Row(
                                      children: [
                                        Text(
                                          "12 Likes",
                                          style: likeCommentTextStyle(),
                                        ),
                                        SizedBox(
                                          width: 20.0,
                                        ),
                                        Text(
                                          "3 Comments",
                                          style: likeCommentTextStyle(),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
          separatorBuilder: (context, index) {
            return SizedBox(
              height: 20.0,
            );
          },
          itemCount: 10,
        ),
      ),
    );
  }
}
