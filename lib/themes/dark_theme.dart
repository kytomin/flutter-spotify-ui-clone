import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spotify_ui/utils/constants.dart';

ThemeData darkThemeData(BuildContext context) {
  return ThemeData.dark().copyWith(
    appBarTheme: AppBarTheme(centerTitle: false, elevation: 0),
    primaryColor: Color(0xFF00BF6D),
    backgroundColor: Color(0xFF121212),
    scaffoldBackgroundColor: Color(0xFF121212),
    iconTheme: IconThemeData(color: Color(0xFFF5FCF9)),
    textTheme: GoogleFonts.interTextTheme(Theme.of(context).textTheme)
        .apply(bodyColor: Color(0xFFF5FCF9), displayColor: Color(0xFFF5FCF9)),
    colorScheme: ColorScheme.dark().copyWith(
      primary: Color(0xFF00BF6D),
      secondary: Color(0xFF282828),
      error: Color(0xFFF03738),
    ),
  );
}
