// Package imports.
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// Local imports.
import 'package:talawa_design/constants/colors.dart';
import 'package:talawa_design/constants/text_styles.dart';

class MemberExpand extends StatelessWidget {
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
              "Member Details",
              style: appBarTextStyle(),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 100.0,
                  height: 100.0,
                  child: CircleAvatar(
                    backgroundColor: memberColor,
                    child: Text(
                      "A",
                      style: GoogleFonts.montserrat(
                        textStyle: TextStyle(
                          color: scaffoldColor,
                          fontSize: 60,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  "Arteev Raina",
                  style: nameTitleMemberDetails(),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  "arteevraina@gmail.com",
                  style: subTitleMemberDetails(),
                ),
                SizedBox(
                  height: 40.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Role",
                        style: labelMemberDetails(),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 25.0,
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        physics: ClampingScrollPhysics(),
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return Container(
                            width: 80,
                            height: 25,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                color: appBarColor,
                              ),
                            ),
                            child: Center(
                              child: (index == 0)
                                  ? Text(
                                      "Admin",
                                      style: roleMemberDetails(),
                                    )
                                  : (index == 1)
                                      ? Text(
                                          "Mentor",
                                          style: roleMemberDetails(),
                                        )
                                      : (index == 2)
                                          ? Text(
                                              "Member",
                                              style: roleMemberDetails(),
                                            )
                                          : (index == 3)
                                              ? Text(
                                                  "Organizer",
                                                  style: roleMemberDetails(),
                                                )
                                              : Text(
                                                  "Host",
                                                  style: roleMemberDetails(),
                                                ),
                            ),
                          );
                        },
                        separatorBuilder: (context, index) {
                          return SizedBox(
                            width: 20.0,
                          );
                        },
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 20.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Events",
                        style: labelMemberDetails(),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 40.0,
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        physics: ClampingScrollPhysics(),
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return Container(
                            width: 110,
                            height: 35,
                            decoration: BoxDecoration(
                              color: memberColor,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Center(
                              child: (index == 0)
                                  ? Text(
                                      "Flutter Day",
                                      style: eventsMemberDetails(),
                                    )
                                  : (index == 1)
                                      ? Text(
                                          "Andrew Talk",
                                          style: eventsMemberDetails(),
                                        )
                                      : (index == 2)
                                          ? Text(
                                              "Q & A",
                                              style: eventsMemberDetails(),
                                            )
                                          : (index == 3)
                                              ? Text(
                                                  "Key Notes",
                                                  style: eventsMemberDetails(),
                                                )
                                              : Text(
                                                  "Dev Tools",
                                                  style: eventsMemberDetails(),
                                                ),
                            ),
                          );
                        },
                        separatorBuilder: (context, index) {
                          return SizedBox(
                            width: 20.0,
                          );
                        },
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Tasks",
                        style: labelMemberDetails(),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 40.0,
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        physics: ClampingScrollPhysics(),
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return Container(
                            width: 110,
                            height: 35,
                            decoration: BoxDecoration(
                              color: memberColor,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Center(
                              child: (index == 0)
                                  ? Text(
                                      "Setup",
                                      style: eventsMemberDetails(),
                                    )
                                  : (index == 1)
                                      ? Text(
                                          "Hosting",
                                          style: eventsMemberDetails(),
                                        )
                                      : (index == 2)
                                          ? Text(
                                              "Record",
                                              style: eventsMemberDetails(),
                                            )
                                          : (index == 3)
                                              ? Text(
                                                  "Edit",
                                                  style: eventsMemberDetails(),
                                                )
                                              : Text(
                                                  "Upload",
                                                  style: eventsMemberDetails(),
                                                ),
                            ),
                          );
                        },
                        separatorBuilder: (context, index) {
                          return SizedBox(
                            width: 20.0,
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
