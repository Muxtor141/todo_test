import 'package:flutter/material.dart';
import 'package:test_todo/core/assets/colors.dart';


abstract class AppTheme {
  static ThemeData theme() => ThemeData(
      scaffoldBackgroundColor: background,
      fontFamily: 'ProximaNova',
      backgroundColor: background,
      appBarTheme: const AppBarTheme(color: white),
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      textTheme: const TextTheme(
          headline1: headline1,
          headline2: headline2,
          headline3: headline3,
          headline4: headline4,
          headline5: headline5,
          headline6: headline6,
          bodyText1: bodyText1,
          bodyText2: bodyText2,
          subtitle1: subTitle1,
          subtitle2: subTitle2),
      colorScheme: const ColorScheme(
        background: background,
        brightness: Brightness.light,
        primary: blue,
        secondary: blue,
        error: red,
        surface: greenAccent,
        onPrimary: white,
        onSecondary: deepDark,
        onBackground: background,
        onError: primaryColor,
        onSurface: mainDark,
      ));

  // Fonts
  static const headline1 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w700,
    color: mainDark,
  );
  static const headline2 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w700,
    color: white,
  );
  static const headline3 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w700,
    color: nepal,
  );
  static const headline4 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: blue,
  );
  static const headline5 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: secondaryColor,
  );
  static const headline6 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: green,
  );
  static const bodyText1 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: deepDark,
  );

  static const bodyText2 = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w600,
    color: icons,
  );

  static const subTitle1 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: red,
  );

  static const subTitle2 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: linkWater,
  );

  static const caption = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: lightBlue,
  );
}
