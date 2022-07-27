import 'package:flutter/material.dart';
import 'consts.dart';

final outlinedButtonThemeData = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
  primary: Colors.white,
  backgroundColor: secondaryColor,
  padding: const EdgeInsets.all(18),
  textStyle: outlinedButtonTextStyle,
  side: BorderSide.none,
  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(28)),
));

final inputDecorationTheme = InputDecorationTheme(
  filled: true,
  fillColor: const Color(0xFFF5F5F5),
  hintStyle: textFieldHintStyle,
  contentPadding: const EdgeInsets.only(left: 22, right: 18),
  border: OutlineInputBorder(
      borderSide: BorderSide.none, borderRadius: BorderRadius.circular(28)),
);

final textButtonThemeData = TextButtonThemeData(
  style: TextButton.styleFrom(
    padding: EdgeInsets.zero,
    primary: textColor,
    textStyle: textButtonStyle,
  ),
);

final bottomNavigationBarTheme = BottomNavigationBarThemeData(
    backgroundColor: const Color(0xFFF5F5F5),
    selectedItemColor: secondaryColor,
    unselectedItemColor: const Color(0xFF8C8C98),
    selectedLabelStyle: iconTextStyle,
    unselectedLabelStyle: iconTextStyle,
    showSelectedLabels: true,
    showUnselectedLabels: true,
    type: BottomNavigationBarType.fixed,
    landscapeLayout: BottomNavigationBarLandscapeLayout.spread);
