import 'package:flutter/material.dart';
import 'package:talawa_design/constants/colors.dart';
import 'package:talawa_design/constants/text_styles.dart';

// ignore: non_constant_identifier_names
Widget MessageBox(BuildContext context) {
  return SizedBox(
    height: 50,
    width: MediaQuery.of(context).size.width * 0.5,
    child: TextField(
      style: loginScreenInputTextStyle(),
      decoration: InputDecoration(
        filled: true,
        fillColor: scaffoldColor,
        hintStyle: loginScreenInputTextStyle(),
        hintText: "Write a message...",
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    ),
  );
}
