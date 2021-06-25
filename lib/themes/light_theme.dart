import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spotify_ui/utils/constants.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData lightThemeData(BuildContext context) {
  return ThemeData.light().copyWith(
    appBarTheme:  AppBarTheme(centerTitle: false, elevation: 0),
    primaryColor: kPrimaryColor,
    scaffoldBackgroundColor: kContentColorDarkTheme,
    iconTheme: IconThemeData(color: kContentColorLightTheme),
    textTheme: GoogleFonts.interTextTheme(Theme.of(context).textTheme)
        .apply(bodyColor: kContentColorLightTheme),
    colorScheme: ColorScheme.light(
      primary: kPrimaryColor,
      secondary: kSecondaryColor,
      error: kErrorColor,
    ),
  );
}

