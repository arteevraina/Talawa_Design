// Package imports.
import 'package:flutter/material.dart';

// Local imports.
import 'package:talawa_design/constants/colors.dart';
import 'package:talawa_design/constants/text_styles.dart';

class ExpandPost extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
                "Post Expand",
                style: appBarTextStyle(),
              ),
            ],
          ),
        ),
        backgroundColor: scaffoldColor,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Row(
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
                      width: 10.0,
                    ),
                    Text(
                      "Arteev Raina",
                      style: expandPostTitleTextStyle(),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30.0,
                ),
                TextField(
                  style: loginScreenInputTextStyle(),
                  maxLines: 5,
                  decoration: InputDecoration(
                    hintStyle: loginScreenInputTextStyle(),
                    hintText: "Write your comment here !",
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        style: BorderStyle.solid,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(30),
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: titleColorLoginScreen,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(30),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: titleColorLoginScreen,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(30),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Align(
                  alignment: Alignment.topRight,
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
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Center(
                      child: Text(
                        "Comment",
                        style: setUrlButtonTextStyle(),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Divider(),
                SizedBox(
                  height: 20.0,
                ),
                ListView.separated(
                  shrinkWrap: true,
                  physics: ClampingScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              backgroundColor: fillColorSearchBar,
                              child: Image.asset("assets/logo.png"),
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Text(
                              "Arteev Raina",
                              style: commenterNameTextStyle(),
                            ),
                            SizedBox(
                              width: 20.0,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "This is a comment!!! Hello World",
                          style: commentTextStyle(),
                          textAlign: TextAlign.left,
                        ),
                      ],
                    );
                  },
                  separatorBuilder: (context, index) {
                    return Column(
                      children: [
                        SizedBox(
                          width: 10.0,
                        ),
                        Divider(),
                      ],
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
