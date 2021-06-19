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

  static Color lightGreen = const Color(0x006d9f71);
  static Color brownish = const Color(0x0054574b);
  static Color blackShade = const Color(0xff09221d);
  static Color lightblue = const Color(0x000dd8e0);
  static Color dullGreen = const Color(0x007b886f);
  static Color waterBlue = const Color(0x0000b2ff);
  static Color landBrown = const Color(0x006c5952);
  static Color creamcolor = const Color(0xfff5f5f5);

  // The Color Decided by ping
  static Color oldBurgandy = const Color(0x004b3b40);
  static Color shadow = const Color(0x0082735c);
  static Color olivine = const Color(0x009db17c);
  static Color grannySmithApple = const Color(0x009cde9f);
  static Color teaGreen = const Color(0x00d1f5be);

  static Color green = const Color(0xff747A47);
  static Color greenAccent = const Color(0xff6A6F47);
  static Color brown = const Color(0xff82735C);
  static Color brownAccent = const Color(0xff6B5F4C);
  static Color blue = const Color(0xff47627A);
  static Color blueAccent = const Color(0xff5A80A1);
}
