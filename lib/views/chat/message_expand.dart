// Package imports.
import 'package:flutter/material.dart';

// Local imports.
import 'package:talawa_design/constants/colors.dart';
import 'package:talawa_design/constants/text_styles.dart';
import 'package:talawa_design/components/message_box.dart';

class MessageExpand extends StatelessWidget {
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
                "Arteev Raina",
                style: appBarTextStyle(),
              ),
            ],
          ),
        ),
        body: Stack(
          children: [
            SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 60.0,
                      height: 60.0,
                      child: CircleAvatar(
                        backgroundColor: fillColorSearchBar,
                        child: Image.asset(
                          "assets/logo.png",
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      "Arteev Raina",
                      style: messageExpandTitleTextStyle(),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Divider(),
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Text(
                          "Friday",
                          style: dividerStyle(),
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Expanded(
                          child: Divider(),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ListView.separated(
                      shrinkWrap: true,
                      physics: BouncingScrollPhysics(),
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            (index % 2 == 0)
                                ? Column(
                                    children: [
                                      Row(
                                        children: [
                                          CircleAvatar(
                                            backgroundColor: fillColorSearchBar,
                                            child: Image.asset(
                                              "assets/logo.png",
                                            ),
                                          ),
                                          SizedBox(
                                            width: 10.0,
                                          ),
                                          Text(
                                            "Arteev Raina",
                                            style: messageExpandListTextStyle(),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 8.0,
                                      ),
                                      Text(
                                        "Hi, Please be there on time. Otherwise, It is going to harm the image of our organization.",
                                        maxLines: 3,
                                        style: messageDescriptonTextStyle(),
                                      ),
                                    ],
                                  )
                                : Column(
                                    children: [
                                      Row(
                                        children: [
                                          CircleAvatar(
                                            backgroundColor: fillColorSearchBar,
                                            child: Image.asset(
                                              "assets/logo.png",
                                            ),
                                          ),
                                          SizedBox(
                                            width: 10.0,
                                          ),
                                          Text(
                                            "Ayush Raina",
                                            style: messageExpandListTextStyle(),
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        height: 8.0,
                                      ),
                                      Text(
                                        "Hi, Please be there on time. Otherwise, It is going to harm the image of our organization.",
                                        maxLines: 3,
                                        style: messageDescriptonTextStyle(),
                                      ),
                                    ],
                                  ),
                          ],
                        );
                      },
                      separatorBuilder: (context, index) {
                        return Column(
                          children: [
                            SizedBox(
                              height: 8.0,
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(
                                40,
                                0,
                                0,
                                0,
                              ),
                              child: Divider(),
                            ),
                            SizedBox(
                              height: 8.0,
                            ),
                          ],
                        );
                      },
                      itemCount: 10,
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: FractionalOffset.bottomCenter,
              child: Container(
                height: 60.0,
                width: MediaQuery.of(context).size.width,
                color: bottomBarColor,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Icons.photo,
                    ),
                    Icon(
                      Icons.mic,
                    ),
                    MessageBox(context),
                    Icon(
                      Icons.send,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
