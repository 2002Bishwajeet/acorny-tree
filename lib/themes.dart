import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Themes {
  static ThemeData generalTheme(BuildContext context) {
    return ThemeData.dark().copyWith(
      backgroundColor: creamcolor,
      textTheme: TextTheme(
        headline5: const TextStyle(fontWeight: FontWeight.w500),
        headline4: TextStyle(fontWeight: FontWeight.bold, color: blackShade),
        // subtitle1: TextStyle(color: blackShade)
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: landBrown,
        titleTextStyle: TextStyle(
          fontFamily: GoogleFonts.nunito().fontFamily,
        ),
      ),
    );
  }

  static Color lightGreen = const Color(0x6d9f71);
  static Color brownish = const Color(0x54574b);
  static Color blackShade = const Color(0x09221d);
  static Color lightblue = const Color(0x0dd8e0);
  static Color dullGreen = const Color(0x7b886f);
  static Color waterBlue = const Color(0x00b2ff);
  static Color landBrown = const Color(0x6c5952);
  static Color creamcolor = const Color(0xf5f5f5);

  // The Color Decided by ping
  static Color oldBurgandy = const Color(0x4b3b40);
  static Color shadow = const Color(0x82735c);
  static Color olivine = const Color(0x9db17c);
  static Color grannySmithApple = const Color(0x9cde9f);
  static Color teaGreen = const Color(0xd1f5be);

  static Color green = const Color(0xff747A47);
  static Color greenAccent = const Color(0xff6A6F47);
  static Color brown = const Color(0xff82735C);
  static Color brownAccent = const Color(0xff6B5F4C);
  static Color blue = const Color(0xff47627A);
  static Color blueAccent = const Color(0xff5A80A1);
}
