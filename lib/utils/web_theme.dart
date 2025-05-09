import 'package:flutter/material.dart';

import '../utils/utils.dart';

class WebTheme {
  static const lightTextTheme = TextTheme(
    // Display
    displayLarge: TextStyle(
      fontSize: 72,
      fontWeight: FontWeight.w700,
      fontFamily: "Inter",
    ),

    // Headline
    headlineLarge: TextStyle(
      fontSize: 48,
      fontWeight: FontWeight.w700,
      fontFamily: "Inter",
    ),
    headlineMedium: TextStyle(
      fontSize: 32,
      fontWeight: FontWeight.w400,
      fontFamily: "Inter",
    ),

    // Title
    titleLarge: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w600,
      fontFamily: "Inter",
    ),
    titleMedium: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w400,
      fontFamily: "Inter",
    ),

    // Body
    bodyLarge: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w600,
      fontFamily: "Inter",
    ),
    bodyMedium: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      fontFamily: "Inter",
    ),

    // Label
    labelLarge: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w600,
      fontFamily: "Inter",
    ),
    labelMedium: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      fontFamily: "Inter",
    ),
  );

  static ThemeData theme = ThemeData(
    scaffoldBackgroundColor: const Color(0xFFFFFFFF),
    brightness: Brightness.light,
    useMaterial3: true,
    textTheme: lightTextTheme,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: pBlue,
          foregroundColor: white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
            side: BorderSide(
              color: grey30,
            ),
          ),
          padding: const EdgeInsets.symmetric(
            vertical: 20,
            horizontal: 32,
          )),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        padding: EdgeInsets.zero,
        foregroundColor: pBlue,
      ),
    ),
  );
}
