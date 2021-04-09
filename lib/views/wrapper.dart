// Package imports.
import 'package:flutter/material.dart';

// Local imports.
import 'package:talawa_design/constants/colors.dart';
import 'package:talawa_design/constants/text_styles.dart';
import 'package:talawa_design/views/members/edit_profile_screen.dart';
import 'package:talawa_design/views/events/events_screen.dart';
import 'package:talawa_design/views/newsfeed/home_page_screen.dart';
import 'package:talawa_design/views/organization/join_organization_screen.dart';
import 'package:talawa_design/views/authentication/login_screen.dart';
import 'package:talawa_design/views/members/members_screen.dart';
import 'package:talawa_design/views/chat/message_list.dart';

class Wrapper extends StatefulWidget {
  @override
  _WrapperState createState() => _WrapperState();
}

class _WrapperState extends State<Wrapper> {
  // Selected Index.
  int selectedIndex = 0;

  /// Initialize [currentTab] variable.
  var currentTab = [
    HomeScreen(),
    EventsScreen(),
    MembersScreen(),
  ];

  void onTap(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

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
              (selectedIndex == 0)
                  ? Text(
                      "NewsFeed",
                      style: appBarTextStyle(),
                    )
                  : (selectedIndex == 1)
                      ? Text(
                          "Events",
                          style: appBarTextStyle(),
                        )
                      : Text(
                          "Members",
                          style: appBarTextStyle(),
                        )
            ],
          ),
          actions: [
            IconButton(
              icon: Icon(
                Icons.messenger_outline,
                color: appBarTextIconColor,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MessageList(),
                  ),
                );
              },
            ),
          ],
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          "assets/logo.png",
                          width: 100.0,
                          height: 100.0,
                        ),
                        Text(
                          "Talawa",
                          style: drawerTitleTextStyle(),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Text(
                            "Dark",
                            style: drawerlistTileTextStyle(),
                          ),
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Icon(
                          Icons.toggle_off_outlined,
                          color: appBarColor,
                          size: 35.0,
                        ),
                        SizedBox(
                          width: 30.0,
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    child: Column(
                      children: [
                        Text(
                          "Welcome Arteev",
                          style: drawersubTitleTextStyle(),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          "Organization: Palisadoes",
                          style: drawersubsubTitleTextStyle(),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Divider(),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => EditProfile(),
                    ),
                  );
                },
                child: ListTile(
                  title: Text(
                    "Your Profile / Edit Profile",
                    style: drawerlistTileTextStyle(),
                  ),
                  trailing: Icon(
                    Icons.edit_outlined,
                    color: backgroundColorBNB,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => JoinOrganzation(),
                    ),
                  );
                },
                child: ListTile(
                  title: Text(
                    "Join Organization",
                    style: drawerlistTileTextStyle(),
                  ),
                  trailing: Icon(
                    Icons.card_membership_outlined,
                    color: backgroundColorBNB,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginScreen(),
                    ),
                  );
                },
                child: ListTile(
                  title: Text(
                    "Logout",
                    style: drawerlistTileTextStyle(),
                  ),
                  trailing: Icon(
                    Icons.logout,
                    color: backgroundColorBNB,
                  ),
                ),
              ),
              ListTile(
                title: Text(
                  "About Talawa",
                  style: drawerlistTileTextStyle(),
                ),
                trailing: Image.asset(
                  "assets/logo.png",
                  width: 35.0,
                ),
              ),
            ],
          ),
        ),
        body: currentTab.elementAt(
          selectedIndex,
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: backgroundColorBNB,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.calendar_today_outlined,
              ),
              label: 'Events',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.people,
              ),
              label: 'Members',
            ),
          ],
          currentIndex: selectedIndex,
          selectedItemColor: iconColorBNB,
          selectedLabelStyle: selectedBNBTextStyle(),
          unselectedLabelStyle: unselectedBNBTextStyle(),
          unselectedItemColor: Colors.grey,
          onTap: onTap,
        ),
      ),
    );
  }
}
