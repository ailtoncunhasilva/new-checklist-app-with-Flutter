import 'package:check_list/app/core/const.dart';
import 'package:flutter/material.dart';

abstract class CustomTheme{
  static ThemeData get mainTheme => ThemeData(
    primarySwatch: kPrimaryColor,
    accentColor: kAccentColor,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    brightness: Brightness.light,
    textTheme: TextTheme(
      bodyText2: TextStyle(color: Colors.grey[600]),
      subtitle1: TextStyle(
        color: Colors.grey[800],
        fontWeight: FontWeight.w500,
      ),
      button: TextStyle(color: Colors.white),
    ),
    buttonTheme: ButtonThemeData(textTheme: ButtonTextTheme.primary),
  );
}