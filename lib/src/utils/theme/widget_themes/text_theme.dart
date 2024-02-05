import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OSCTextTheme {
  static TextTheme lightTextTheme = TextTheme(
    displayMedium: GoogleFonts.montserrat(
      color: Colors.black,
    ),
    bodyLarge: GoogleFonts.poppins(
      color: Colors.black,
      fontSize: 24,
    ),
    headlineMedium: GoogleFonts.montserrat(),
    titleMedium: GoogleFonts.poppins(),
  );

  static TextTheme darkTextTheme = TextTheme(
    displayMedium: GoogleFonts.montserrat(
      color: Colors.white,
    ),
    bodyLarge: GoogleFonts.poppins(
      color: Colors.white,
      fontSize: 24,
    ),
    headlineMedium: GoogleFonts.montserrat(),
    titleMedium: GoogleFonts.poppins(
      color: Colors.white,
    ),
  );
}
