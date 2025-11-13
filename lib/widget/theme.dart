import 'package:flutter/material.dart';
import 'package:portfolio/widget/theme_color.dart';

/// ✅ LIGHT THEME
final ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  scaffoldBackgroundColor: AppTheme.backgroundColor,
  colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
  appBarTheme: AppBarTheme(
    backgroundColor: AppTheme.backgroundColor,
    foregroundColor: AppTheme.blackColor,
    elevation: 0,
  ),
  textTheme: TextTheme(
    bodyLarge: TextStyle(color: AppTheme.textColor),
    bodyMedium: TextStyle(color: AppTheme.textColor),
  ),
  useMaterial3: true,
);

/// ✅ DARK THEME
final ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  scaffoldBackgroundColor: AppTheme.darkBackgroundColor,
  colorScheme: ColorScheme.fromSeed(
    seedColor: Colors.deepPurple,
    brightness: Brightness.dark,
  ),
  appBarTheme: AppBarTheme(
    backgroundColor: AppTheme.darkAppBarColor,
    foregroundColor: AppTheme.backgroundColor,
    elevation: 0,
  ),
  textTheme: TextTheme(
    bodyLarge: TextStyle(color: AppTheme.darkTextColor),
    bodyMedium: TextStyle(color: AppTheme.darkTextColor),
  ),
  useMaterial3: true,
);
