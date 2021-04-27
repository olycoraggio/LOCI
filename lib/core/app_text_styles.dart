import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loci/core/app_colors.dart';

class AppTextStyles {
  static final TextStyle splash = GoogleFonts.passeroOne(
    color: AppColors.white,
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

  static final TextStyle logoBar = GoogleFonts.passeroOne();

  static final TextStyle logo = GoogleFonts.passeroOne();

  static final TextStyle heading = GoogleFonts.electrolize();

  static final TextStyle headingSlogan = GoogleFonts.electrolize();

  static final TextStyle body = GoogleFonts.electrolize();

  static final TextStyle text = GoogleFonts.electrolize();
}
