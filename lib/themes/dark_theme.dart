import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spotify_ui/utils/constants.dart';

ThemeData darkThemeData(BuildContext context) {
  return ThemeData.dark().copyWith(
    appBarTheme:  AppBarTheme(centerTitle: false, elevation: 0),
    primaryColor: kPrimaryColor,
    scaffoldBackgroundColor: Color(0xFF121212),
    iconTheme: IconThemeData(color: kContentColorDarkTheme),
    textTheme: GoogleFonts.interTextTheme(Theme.of(context).textTheme)
        .apply(bodyColor: kContentColorDarkTheme),
    colorScheme: ColorScheme.dark().copyWith(
      primary: kPrimaryColor,
      secondary: kSecondaryColor,
      error: kErrorColor,
    ),
  );
}
