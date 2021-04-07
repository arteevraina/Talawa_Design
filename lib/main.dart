// Library Imports.
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:talawa_design/views/home_page_screen.dart';
import 'package:talawa_design/views/login_screen.dart';
import 'package:talawa_design/views/register_screen.dart';

// Local Imports.
import 'package:talawa_design/views/splash_screen.dart';
import 'package:talawa_design/views/set_url_screen.dart';
import 'package:talawa_design/views/wrapper.dart';

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
