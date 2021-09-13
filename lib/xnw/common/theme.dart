import 'package:flutter/material.dart';

class APPTheme {
  static const Color normalTextColor = Colors.black;
  static const Color darkTextColor = Colors.white;

  static const double body1FontSize = 12;
  static const double body2FontSize = 14;

  static const double smallFontSize = 16;
  static const double normalFontSize = 20;
  static const double largeFontSize = 24;

  static ThemeData normalTheme = ThemeData(
    primaryColor: Colors.green,
    splashColor: Colors.transparent,
    highlightColor: Colors.transparent,
    textTheme: TextTheme(
      bodyText1: TextStyle(fontSize: body1FontSize, color: normalTextColor),
      bodyText2: TextStyle(fontSize: body2FontSize, color: normalTextColor),
      headline1: TextStyle(fontSize: smallFontSize, color: normalTextColor),
      headline2: TextStyle(fontSize: normalFontSize, color: normalTextColor),
      headline3: TextStyle(fontSize: largeFontSize, color: normalTextColor),
    ),
  );
  static ThemeData darkTheme = ThemeData(
    primaryColor: Colors.black,
    splashColor: Colors.transparent,
    highlightColor: Colors.transparent,
    textTheme: TextTheme(
      bodyText1: TextStyle(fontSize: body1FontSize, color: darkTextColor),
      bodyText2: TextStyle(fontSize: body2FontSize, color: darkTextColor),
      headline1: TextStyle(fontSize: smallFontSize, color: darkTextColor),
      headline2: TextStyle(fontSize: normalFontSize, color: darkTextColor),
      headline3: TextStyle(fontSize: largeFontSize, color: darkTextColor),
    ),
  );
}
