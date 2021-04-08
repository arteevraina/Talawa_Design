// Package imports.
import 'package:flutter/material.dart';

// Local imports.
import 'package:talawa_design/constants/colors.dart';
import 'package:talawa_design/constants/text_styles.dart';
import 'package:talawa_design/components/search_box.dart';

class AssignRoles extends StatelessWidget {
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
              "Assign Roles",
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
            child: ListView.separated(
              shrinkWrap: true,
              physics: BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    showBottomSheet(
                      context: context,
                      builder: (context) => Container(
                        color: assignRolePopupColor,
                        height: 150,
                        child: Center(
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Role",
                                  style: bottomSheetTextStyle(),
                                ),
                              ),
                              SizedBox(
                                height: 50,
                                width: MediaQuery.of(context).size.width * 0.5,
                                child: TextField(
                                  style: loginScreenInputTextStyle(),
                                  decoration: InputDecoration(
                                    filled: true,
                                    fillColor: scaffoldColor,
                                    hintStyle: loginScreenInputTextStyle(),
                                    hintText: "Type role here",
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide.none,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Container(
                                width: 50,
                                height: 25,
                                decoration: BoxDecoration(
                                  color: appBarColor,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Center(
                                  child: Text(
                                    "Add +",
                                    style: bottomSheetButtonTextStyle(),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: assignRoleBackgroundColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: 50.0,
                            height: 50.0,
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
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Arteev Raina",
                                style: messageExpandListTextStyle(),
                              ),
                              Text(
                                "arteevraina@gmail.com",
                                style: messageDescriptionTextStyle(),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
              separatorBuilder: (builder, index) {
                return SizedBox(
                  height: 20.0,
                );
              },
              itemCount: 10,
            ),
          ),
        ),
      ),
    );
  }
}
