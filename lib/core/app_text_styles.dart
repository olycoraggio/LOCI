import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyles {
  static final TextStyle splash = GoogleFonts.passeroOne(
    color: Colors.white,
    fontSize: 50,
    fontWeight: FontWeight.w500,
    shadows: [
      Shadow(
        blurRadius: 10.0,
        color: Colors.grey.shade900,
        offset: Offset(
          5.0,
          5.0,
        ),
      ),
    ],
  );

  static final TextStyle logoBar = GoogleFonts.passeroOne(
    color: Colors.grey[900],
    fontSize: 35,
    fontWeight: FontWeight.w500,
  );

  static final TextStyle logo = GoogleFonts.passeroOne(
    color: Colors.white,
    fontSize: 40,
    fontWeight: FontWeight.w500,
    shadows: [
      Shadow(
        blurRadius: 10.0,
        color: Colors.grey[900],
        offset: Offset(
          5.0,
          5.0,
        ),
      ),
    ],
  );

  static final TextStyle headingSec = GoogleFonts.passeroOne(
    color: Colors.grey[900],
    fontSize: 20,
  );

  static final TextStyle heading = GoogleFonts.passeroOne(
    color: Colors.grey[800],
    fontSize: 24,
  );

  static final TextStyle headingTable = GoogleFonts.passeroOne(
    color: Colors.grey.withRed(130),
    fontSize: 40,
    fontWeight: FontWeight.w500,
    decoration: TextDecoration.underline,
  );

  static final TextStyle tab = GoogleFonts.electrolize(
    fontSize: 24,
    fontWeight: FontWeight.w600,
    color: Colors.grey[900],
  );

  static final TextStyle headingCard = GoogleFonts.passeroOne(
    color: Colors.grey[900],
    fontSize: 32,
  );

  static final TextStyle body = GoogleFonts.electrolize(fontSize: 18);

  static final TextStyle text = GoogleFonts.electrolize();
}
