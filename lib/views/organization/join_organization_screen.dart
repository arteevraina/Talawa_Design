// Package imports.
import 'package:flutter/material.dart';

// Local imports.
import 'package:talawa_design/constants/colors.dart';
import 'package:talawa_design/constants/text_styles.dart';
import 'package:talawa_design/components/search_box.dart';

class JoinOrganzation extends StatelessWidget {
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
                "Join Organization",
                style: appBarTextStyle(),
              ),
            ],
          ),
        ),
        body: Padding(
          padding: EdgeInsets.all(20.0),
          child: Center(
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                children: [
                  SearchBox(),
                  SizedBox(
                    height: 10.0,
                  ),
                  Divider(),
                  GridView.builder(
                    shrinkWrap: true,
                    physics: BouncingScrollPhysics(),
                    itemCount: 30,
                    gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: (MediaQuery.of(context).orientation ==
                              Orientation.portrait)
                          ? 2
                          : 3,
                    ),
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Container(
                            width: 80,
                            height: 80,
                            child: CircleAvatar(
                              backgroundColor: fillColorSearchBar,
                              child: Image.asset("assets/logo.png"),
                            ),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            "Test Org",
                            style: expandPostTitleTextStyle(),
                          )
                        ],
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
