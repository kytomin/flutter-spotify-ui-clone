import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spotify_ui/pages/landing_page.dart';
import 'package:spotify_ui/themes/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: darkThemeData(context),
      home: SafeArea(child: LandingPage()),

      );
  }
}
