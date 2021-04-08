// Library Imports.
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:talawa_design/views/create_events_screen.dart';
import 'package:talawa_design/views/create_post_screen.dart';
import 'package:talawa_design/views/edit_profile_scree.dart';
import 'package:talawa_design/views/event_expand.dart';
import 'package:talawa_design/views/events_screen.dart';
import 'package:talawa_design/views/expand_post_screen.dart';
import 'package:talawa_design/views/member_expand.dart';
import 'package:talawa_design/views/message_expand.dart';
import 'package:talawa_design/views/message_list.dart';

// Local Imports.
import 'package:talawa_design/views/splash_screen.dart';
import 'package:talawa_design/views/set_url_screen.dart';
import 'package:talawa_design/views/wrapper.dart';
import 'package:talawa_design/views/home_page_screen.dart';
import 'package:talawa_design/views/login_screen.dart';
import 'package:talawa_design/views/register_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Wrapper(),
    );
  }
}
