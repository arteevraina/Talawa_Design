// Library imports.
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// Local imports.
import 'package:talawa_design/constants/colors.dart';

// Splash Screen Text Styles.
TextStyle spashScreenTitleTextStyle() {
  return GoogleFonts.montserrat(
    textStyle: TextStyle(
      color: textColorSplash,
      fontSize: 58.0,
      letterSpacing: 0,
      fontWeight: FontWeight.w500,
    ),
  );
}

TextStyle spashScreenTagLineTextStyle() {
  return GoogleFonts.montserrat(
    textStyle: TextStyle(
      color: textColorSplash,
      fontSize: 20.0,
      letterSpacing: 2,
      fontWeight: FontWeight.w400,
    ),
  );
}

// Set URL Page Text Styles.
TextStyle setUrlTitleTextStyle() {
  return GoogleFonts.montserrat(
    textStyle: TextStyle(
      color: titleColorSetUrl,
      fontSize: 58.0,
      letterSpacing: 0,
      fontWeight: FontWeight.w500,
    ),
  );
}

TextStyle setUrlTagLineTextStyle() {
  return GoogleFonts.montserrat(
    textStyle: TextStyle(
      color: tagLineColorSetUrl,
      fontSize: 20.0,
      letterSpacing: 2,
      fontWeight: FontWeight.w400,
    ),
  );
}

TextStyle setUrlTextStyle() {
  return GoogleFonts.montserrat(
    textStyle: TextStyle(
      color: textColorSetUrl,
      fontSize: 15.0,
      letterSpacing: 0,
      fontWeight: FontWeight.normal,
    ),
  );
}

TextStyle setUrlButtonTextStyle() {
  return GoogleFonts.montserrat(
    textStyle: TextStyle(
      color: buttonTextColorSetUrl,
      fontSize: 15.0,
      letterSpacing: 2,
      fontWeight: FontWeight.normal,
    ),
  );
}

// LoginScreen & RegisterScreen TextStyle.
TextStyle loginScreenTitleTextStyle() {
  return GoogleFonts.montserrat(
    textStyle: TextStyle(
      color: titleColorLoginScreen,
      fontSize: 58.0,
      letterSpacing: 0,
      fontWeight: FontWeight.w500,
    ),
  );
}

TextStyle loginScreenSubTitleTextStyle() {
  return GoogleFonts.montserrat(
    textStyle: TextStyle(
      color: titleColorLoginScreen,
      fontSize: 24.0,
      letterSpacing: 2,
      fontWeight: FontWeight.w300,
    ),
  );
}

TextStyle loginScreenInputTextStyle() {
  return GoogleFonts.montserrat(
    textStyle: TextStyle(
      color: textColorSetUrl,
      fontSize: 15.0,
      letterSpacing: 0,
      fontWeight: FontWeight.normal,
    ),
  );
}

TextStyle loginScreenButtonTextStyle() {
  return GoogleFonts.montserrat(
    textStyle: TextStyle(
      color: buttonTextColorSetUrl,
      fontSize: 20.0,
      letterSpacing: 2,
      fontWeight: FontWeight.normal,
    ),
  );
}

TextStyle loginScreenTextLeftTextStyle() {
  return GoogleFonts.montserrat(
    textStyle: TextStyle(
      color: textLeftColorLoginScreen,
      fontSize: 15.0,
      letterSpacing: 0,
      fontWeight: FontWeight.normal,
    ),
  );
}

TextStyle loginScreenTextRightTextStyle() {
  return GoogleFonts.montserrat(
    textStyle: TextStyle(
      color: textRightColorLoginScreen,
      fontSize: 15.0,
      letterSpacing: 0,
      fontWeight: FontWeight.normal,
    ),
  );
}

// Appbar TextStyles.
TextStyle appBarTextStyle() {
  return GoogleFonts.montserrat(
    textStyle: TextStyle(
      color: appBarTextIconColor,
      fontSize: 18.0,
      letterSpacing: 0,
      fontWeight: FontWeight.normal,
    ),
  );
}

// NewsFeed TextStyles.
TextStyle postNameTextStyle() {
  return GoogleFonts.montserrat(
    textStyle: TextStyle(
      color: nameColorNewsFeed,
      fontSize: 18.0,
      letterSpacing: 0,
      fontWeight: FontWeight.bold,
    ),
  );
}

TextStyle postTitleTextStyle() {
  return GoogleFonts.montserrat(
    textStyle: TextStyle(
      color: nameColorNewsFeed,
      fontSize: 18.0,
      letterSpacing: 0,
      fontWeight: FontWeight.normal,
    ),
  );
}

TextStyle postDescriptionTextStyle() {
  return GoogleFonts.montserrat(
    textStyle: TextStyle(
      color: nameColorNewsFeed,
      fontSize: 15.0,
      letterSpacing: 0,
      fontWeight: FontWeight.normal,
    ),
  );
}

TextStyle likeCommentTextStyle() {
  return GoogleFonts.montserrat(
    textStyle: TextStyle(
      color: nameColorNewsFeed,
      fontSize: 15.0,
      letterSpacing: 0,
      fontWeight: FontWeight.w500,
    ),
  );
}

// Bottom Navigation Bar TextStyles.
TextStyle selectedBNBTextStyle() {
  return GoogleFonts.montserrat(
    textStyle: TextStyle(
      color: iconColorBNB,
      fontSize: 14.0,
      letterSpacing: 0,
      fontWeight: FontWeight.normal,
    ),
  );
}

TextStyle unselectedBNBTextStyle() {
  return GoogleFonts.montserrat(
    textStyle: TextStyle(
      fontSize: 12.0,
      letterSpacing: 0,
      fontWeight: FontWeight.normal,
    ),
  );
}

// Drawer TextStyle.
TextStyle drawerTitleTextStyle() {
  return GoogleFonts.montserrat(
    textStyle: TextStyle(
      color: titleColorSetUrl,
      fontSize: 38.0,
      letterSpacing: 0,
      fontWeight: FontWeight.w500,
    ),
  );
}

TextStyle drawersubTitleTextStyle() {
  return GoogleFonts.montserrat(
    textStyle: TextStyle(
      color: titleColorSetUrl,
      fontSize: 28.0,
      letterSpacing: 0,
      fontWeight: FontWeight.w300,
    ),
  );
}

TextStyle drawersubsubTitleTextStyle() {
  return GoogleFonts.montserrat(
    textStyle: TextStyle(
      color: titleColorSetUrl,
      fontSize: 20.0,
      letterSpacing: 0,
      fontWeight: FontWeight.w200,
    ),
  );
}

TextStyle drawerlistTileTextStyle() {
  return GoogleFonts.montserrat(
    textStyle: TextStyle(
      color: titleColorSetUrl,
      fontSize: 18.0,
      letterSpacing: 0,
      fontWeight: FontWeight.w300,
    ),
  );
}
