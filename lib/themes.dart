import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Themes {
  static ThemeData generalTheme(BuildContext context) {
    final dark = ThemeData.dark();
    final isDark = Theme.of(context).brightness == Brightness.dark;
    return dark.copyWith(
      scaffoldBackgroundColor: oldBurgandy,
      backgroundColor: oldBurgandy,
      textTheme: const TextTheme(
        headline5: TextStyle(fontWeight: FontWeight.w500),
        headline4: TextStyle(fontWeight: FontWeight.bold, color: blackShade),
        // subtitle1: TextStyle(color: blackShade)
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: brownLight,
        iconTheme: IconThemeData(color: isDark ? lightblue : blackShade),
        titleTextStyle: TextStyle(
          fontFamily: GoogleFonts.nunito().fontFamily,
        ),
      ),
      inputDecorationTheme: const InputDecorationTheme(
        focusedBorder: InputBorder.none,
        border: InputBorder.none,
        enabledBorder: InputBorder.none,
      ),
      textSelectionTheme: const TextSelectionThemeData(
        cursorColor: brownLight,
      ),
    );
  }

  static const Color lightGreen = Color(0xff6d9f71);
  static const Color brownish = Color(0xff54574b);
  static const Color blackShade = Color(0xff09221d);
  static const Color lightblue = Color(0xff0dd8e0);
  static const Color dullGreen = Color(0xff7b886f);
  static const Color waterBlue = Color(0xff00b2ff);
  static const Color landBrown = Color(0xff6c5952);
  static const Color creamcolor = Color(0xfff5f5f5);

  // The Color Decided by ping
  static const Color oldBurgandy = Color(0xff4b3b40);
  static const Color shadow = Color(0xff82735c);
  static const Color olivine = Color(0xff9db17c);
  static const Color grannySmithApple = Color(0xff9cde9f);
  static const Color teaGreen = Color(0xffd1f5be);

  static const Color green = Color(0xff747A47);
  static const Color greenAccent = Color(0xff6A6F47);
  static const Color brownLight = Color(0xffa18e6f);
  static const Color brown = Color(0xff82735C);
  static const Color brownAccent = Color(0xff6B5F4C);
  static const Color blue = Color(0xff47627A);
  static const Color blueAccent = Color(0xff5A80A1);
}
