import 'package:flutter/material.dart';
import 'package:kaseer_app/core/core.dart';

class LightTheme {
  LightTheme(this.primaryColor);

  final Color primaryColor;
  final Color textSolidColor = AppColors.black;
  final Color textDisabledColor = AppColors.black[500]!;
  final Color errorColor = AppColors.red;
  final Color disableColor = AppColors.black[200]!;
  final Color borderColor = AppColors.black[500]!;

  ColorScheme get colorScheme => ColorScheme.light(
        primary: primaryColor,
        secondary: primaryColor,
        error: errorColor,
      );

  TextTheme get textTheme => TextTheme(
        headlineLarge: TextStyle(
          fontSize: Dimens.dp32,
          fontWeight: FontWeight.bold,
          color: textSolidColor,
        ),
        headlineMedium: TextStyle(
          fontSize: Dimens.dp24,
          fontWeight: FontWeight.w600,
          color: textSolidColor,
        ),
        headlineSmall: TextStyle(
          fontSize: Dimens.dp20,
          fontWeight: FontWeight.w600,
          color: textSolidColor,
        ),
        titleLarge: TextStyle(
          fontSize: Dimens.dp16,
          fontWeight: FontWeight.w600,
          color: textSolidColor,
        ),
        titleMedium: TextStyle(
          fontSize: Dimens.dp14,
          fontWeight: FontWeight.w600,
          color: textSolidColor,
        ),
        bodyLarge: TextStyle(
          fontSize: Dimens.dp16,
          fontWeight: FontWeight.w500,
          color: textSolidColor,
        ),
        bodyMedium: TextStyle(
          fontSize: Dimens.dp14,
          fontWeight: FontWeight.w400,
          color: textDisabledColor,
        ),
        labelMedium: TextStyle(
          fontSize: Dimens.dp12,
          fontWeight: FontWeight.w500,
          color: textDisabledColor,
        ),
      );

  ThemeData get theme {
    return ThemeData(
        fontFamily: 'Poppins',
        colorScheme: colorScheme,
        useMaterial3: true,
        primaryColor: primaryColor,
        textTheme: textTheme,
        cardTheme: CardTheme(
          margin: EdgeInsets.zero,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(Dimens.dp8),
            side: BorderSide(color: borderColor),
          ),
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedItemColor: primaryColor,
          unselectedItemColor: disableColor,
        ));
  }
}
