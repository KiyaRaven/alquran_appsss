import 'package:flutter/material.dart';

var themeQuranApp = ThemeData(
    splashColor: Colors.transparent,
    highlightColor: Colors.transparent,
    fontFamily: "Roboto",
    textTheme: textScheme,
    colorScheme: colorScheme);

var colorScheme = ColorScheme(
    brightness: Brightness.light,
    primary: Colors.green.shade300,
    onPrimary: Colors.black,
    secondary: Colors.brown.shade600,
    onSecondary: Colors.black,
    error: Colors.red,
    onError: Colors.white,
    background: Colors.white,
    onBackground: Colors.black,
    surface: Colors.grey.shade300,
    onSurface: Colors.black);

var textScheme = TextTheme(
  displayLarge: TextStyle(
      fontSize: 57,
      fontWeight: FontWeight.w800,
      color: colorScheme.onBackground),
  displayMedium: TextStyle(
      fontSize: 45,
      fontWeight: FontWeight.w800,
      color: colorScheme.onBackground),
  displaySmall: TextStyle(
      fontSize: 36,
      fontWeight: FontWeight.w800,
      color: colorScheme.onBackground),
  headlineLarge: TextStyle(
      fontSize: 40,
      fontWeight: FontWeight.w800,
      color: colorScheme.onBackground),
  headlineMedium: TextStyle(
      fontSize: 36,
      fontWeight: FontWeight.w800,
      color: colorScheme.onBackground),
  headlineSmall: TextStyle(
      fontSize: 32,
      fontWeight: FontWeight.w800,
      color: colorScheme.onBackground),
  titleLarge: TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.w800,
      color: colorScheme.onBackground),
  titleMedium: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w800,
      color: colorScheme.onBackground),
  titleSmall: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w800,
      color: colorScheme.onBackground),
  bodyLarge: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: colorScheme.onBackground),
  bodyMedium: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      color: colorScheme.onBackground),
  bodySmall: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w500,
      color: colorScheme.onBackground),
  labelLarge: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      color: colorScheme.onBackground),
  labelMedium: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w500,
      color: colorScheme.onBackground),
  labelSmall: TextStyle(
      fontSize: 11,
      fontWeight: FontWeight.w500,
      color: colorScheme.onBackground),
);
