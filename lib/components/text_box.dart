import 'package:flutter/material.dart';
import 'package:talawa_design/constants/colors.dart';
import 'package:talawa_design/constants/text_styles.dart';

// ignore: non_constant_identifier_names
Widget TextBox(String hintText, Icon icon) {
  return TextField(
    style: loginScreenInputTextStyle(),
    decoration: InputDecoration(
      prefixIcon: Padding(
        padding: const EdgeInsets.only(
          left: 8.0,
          right: 8.0,
        ),
        child: icon,
      ),
      hintStyle: loginScreenInputTextStyle(),
      hintText: hintText,
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
  );
}
