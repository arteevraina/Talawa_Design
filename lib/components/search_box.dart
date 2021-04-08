// Package imports.
import 'package:flutter/material.dart';

// Local imports.
import 'package:talawa_design/constants/colors.dart';
import 'package:talawa_design/constants/text_styles.dart';

// ignore: non_constant_identifier_names
Widget SearchBox() {
  return SizedBox(
    height: 50,
    child: TextField(
      style: loginScreenInputTextStyle(),
      decoration: InputDecoration(
        suffixIcon: Icon(
          Icons.search,
          color: appBarColor,
        ),
        prefix: SizedBox(
          width: 10.0,
        ),
        filled: true,
        fillColor: fillColorSearchBar,
        hintStyle: loginScreenInputTextStyle(),
        hintText: "Search",
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(30),
        ),
      ),
    ),
  );
}
