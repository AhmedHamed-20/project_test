import 'package:flutter/material.dart';

ThemeData lightMode = ThemeData(
  scaffoldBackgroundColor: Colors.grey[50],
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.transparent,
    elevation: 0,
  ),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    selectedItemColor: Colors.black,
    unselectedItemColor: Colors.grey,
    backgroundColor: Colors.white,
  ),
);

ThemeData darkMode = ThemeData();
