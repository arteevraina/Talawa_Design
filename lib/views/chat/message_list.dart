// Package imports.
import 'package:flutter/material.dart';

// Local imports.
import 'package:talawa_design/constants/colors.dart';
import 'package:talawa_design/constants/text_styles.dart';
import 'package:talawa_design/components/search_box.dart';
import 'package:talawa_design/views/chat/message_expand.dart';

class MessageList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              "Messages",
              style: appBarTextStyle(),
            ),
          ],
        ),
      ),
      backgroundColor: scaffoldColor,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SearchBox(),
                SizedBox(
                  height: 10.0,
                ),
                Divider(),
                ListView.separated(
                  shrinkWrap: true,
                  physics: ClampingScrollPhysics(),
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MessageExpand(),
                          ),
                        );
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
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
                                width: 20.0,
                              ),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                      0,
                                      0,
                                      70,
                                      0,
                                    ),
                                    child: (index == 0)
                                        ? Text(
                                            "Community",
                                            style: nameMessageListTextStyle(),
                                          )
                                        : Text(
                                            "Arteev Raina",
                                            style: nameMessageListTextStyle(),
                                          ),
                                  ),
                                  SizedBox(
                                    height: 10.0,
                                  ),
                                  Text(
                                    "This is a text message",
                                    style: messageDescriptionTextStyle(),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 45,
                            child: Text(
                              "8 April, 2021",
                              style: dateTextStyle(),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.fromLTRB(
                        60,
                        0,
                        0,
                        0,
                      ),
                      child: Divider(),
                    );
                  },
                  itemCount: 10,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
