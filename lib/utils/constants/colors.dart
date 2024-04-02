import 'package:flutter/material.dart';

class TColors {
  TColors._();
  // APP BASIC COLORS
  static const Color primaryColor = Color(0xFF4B68FF);
  static const Color secondaryColor = Color(0xFFFFE24B);
  static const Color accentColor = Color(0xFFB0C7FF);

  // GRADIENT COLORS
    static const Gradient liniarGradient = LinearGradient(
      begin: Alignment(0.0, 0.0),
      end: Alignment(0.707, -0.707),
      colors: [
        Color(0xFFFF9A9E),
        Color(0xFFFAD0C4),
        Color(0xFFFF9A9E),
      ]
    );

  // TEXT COLORS
  static const Color textPrimary = Color(0xFF333333);
  static const Color textsecondary  = Color(0xFF6C757D);
  static const Color textWhite = Colors.white;


  // BACKGROUND COLORS
  static const Color light = Color(0xFFF6F6F6);
  static const Color dark = Color(0xFF272727);
  static const Color primaryBackground = Color(0xFFF3F5FF);


  // BACKGROUND CONTAINERS COLORS
  static const Color lightContainer = Color(0xFFF6F6F6);
  static Color darkContainer = TColors.textWhite.withOpacity(0.1);

  // button colors
  static const Color buttonPrimary = Color(0xFF4B68FF);
  static const Color buttonSecondary = Color(0xFF6C757D);
  static const Color buttonDisabled = Color(0xFFC4C4C4);

  // border colors
  static const Color borderPrimary = Color(0xFFD9D9D9);
  static const Color borderSecondary = Color(0xFFE6E6E6);

  // error and validation colors
  static const Color error = Color(0xFFD32F2F);
  static const Color success = Color(0xFF388E3C);
  static const Color warning = Color(0xFFF57C00);
  static const Color info = Color(0xFF1976D2);

  //neutral shades
  static const Color kBlack = Color(0xFF232323);
  static const Color kDarkerGrey = Color(0xFF4F4F4F);
  static const Color kDarkGrey = Color(0xFF939393);
  static const Color kGrey = Color(0xFFE0E0E0);
  static const Color softGrey = Color(0xFFF4F4F4);
  static const Color lightGrey = Color(0xFFF9F9F9);
  static const Color white = Color(0xFFFFFFFF);

}