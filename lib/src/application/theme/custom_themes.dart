import 'package:flutter/material.dart';
import 'package:my_gym_track/src/application/theme/custom_colors.dart';

class CustomThemes {
  static final defaultTheme = ThemeData(
    fontFamily: 'FiraSans',
    appBarTheme: const AppBarTheme(
      iconTheme: IconThemeData(color: CustomColors.black),
      titleTextStyle: TextStyle(
        fontSize: 20.0,
        fontWeight: FontWeight.w500,
        color: CustomColors.darkerGrey,
      ),
    ),
    textTheme: const TextTheme(
      headline1: TextStyle(
        color: CustomColors.white,
        fontSize: 20,
        fontWeight: FontWeight.w600,
        overflow: TextOverflow.clip,
      ),
      headline2: TextStyle(
        color: CustomColors.black,
        fontSize: 20,
        fontWeight: FontWeight.w400,
      ),
      labelMedium: TextStyle(
        color: CustomColors.black,
        fontSize: 16,
        fontWeight: FontWeight.w700,
      ),
    ),
  );
}
