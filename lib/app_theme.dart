import 'package:flutter/material.dart';

import 'package:ecom/app_colors.dart';

class AppTheme {
  static final ThemeData appTHeme = ThemeData(
    primaryColor: AppColors.primaryYellowColor,
    scaffoldBackgroundColor: AppColors.scaffoldBackgroundColor,
    fontFamily: 'Catamaran',
    textTheme: const TextTheme(
      labelLarge: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.bold,
        fontSize: 18,
      ),
      displaySmall: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 15,
      ),
      displayMedium: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 20,
      ),
    ),
    iconTheme: const IconThemeData(
      color: Colors.black,
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.white,
      titleTextStyle: TextStyle(
        fontWeight: FontWeight.w500,
        color: Colors.black,
        fontSize: 15,
      ),
      iconTheme: IconThemeData(color: Colors.black),
      elevation: 2,
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: Colors.black,
      splashColor: Colors.white,
      foregroundColor: Colors.white,
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        textStyle: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 15,
        ),
      ),
    ),
  );
}
