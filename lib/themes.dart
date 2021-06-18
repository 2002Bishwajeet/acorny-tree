import 'package:flutter/material.dart';
import 'package:flutter_hex_color/flutter_hex_color.dart';
import 'package:google_fonts/google_fonts.dart';

class Themes {
  static ThemeData generalTheme(BuildContext context) {
    return ThemeData(
      fontFamily: GoogleFonts.nunito().fontFamily,
      buttonColor: lightblue,
      
    );
  }

  static Color lightGreen = HexColor('#6D9F71');
  static Color brownish = HexColor('#54574B');
  static Color blackShade = HexColor('#09221D');
  static Color lightblue = HexColor('#0DD8E0');
}
