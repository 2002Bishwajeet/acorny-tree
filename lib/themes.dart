import 'package:flutter/material.dart';
import 'package:flutter_hex_color/flutter_hex_color.dart';
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

  static Color lightGreen = HexColor('#6D9F71');
  static Color brownish = HexColor('#54574B');
  static Color blackShade = HexColor('#09221D');
  static Color lightblue = HexColor('#0DD8E0');
  static Color dullGreen = HexColor('#7B886F');
  static Color waterBlue = HexColor('#00B2FF');
  static Color landBrown = HexColor('#6C5952');
  static Color creamcolor = const Color(0xfff5f5f5);

  // The Color Decided by ping
  static Color oldBurgandy = HexColor('#4B3B40');
  static Color shadow = HexColor('#82735C');
  static Color olivine = HexColor('#9DB17C');
  static Color grannySmithApple = HexColor('#9CDE9F');
  static Color teaGreen = HexColor('D1F5BE');
}
