import 'package:flutter/material.dart';

class AppThemes {
  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primarySwatch: Colors.blue,
    scaffoldBackgroundColor: Colors.grey[100],
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.blue,
      foregroundColor: Colors.white,
    ),
    drawerTheme: DrawerThemeData(
      backgroundColor: Colors.white,
      elevation: 10,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.horizontal(right: Radius.circular(16)),
      ),
    ),
    listTileTheme: ListTileThemeData(
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      iconColor: Colors.blue,
      textColor: Colors.black87,
      selectedColor: Colors.blue,
      selectedTileColor: Colors.blue.withOpacity(0.1),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
    ),
    dividerTheme: DividerThemeData(
      color: Colors.grey[300],
      thickness: 1,
      space: 0,
    ),
    textTheme: const TextTheme(
      bodyMedium: TextStyle(
        fontFamily: 'Roboto',
        fontSize: 16,
        color: Colors.black87,
      ),
      headlineSmall: TextStyle(
        fontFamily: 'Roboto',
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
      bodySmall: TextStyle(
        fontFamily: 'Roboto',
        fontSize: 14,
        color: Colors.white70,
      ),
    ),
  );

  static final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primarySwatch: Colors.deepPurple,
    scaffoldBackgroundColor: Colors.grey[900],
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.black87,
      foregroundColor: Colors.white,
    ),
    drawerTheme: DrawerThemeData(
      backgroundColor: Colors.grey[850],
      elevation: 10,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.horizontal(right: Radius.circular(16)),
      ),
    ),
    listTileTheme: ListTileThemeData(
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      iconColor: Colors.deepPurpleAccent,
      textColor: Colors.white70,
      selectedColor: Colors.deepPurpleAccent,
      selectedTileColor: Colors.deepPurple.withOpacity(0.2),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
    ),
    dividerTheme: DividerThemeData(
      color: Colors.grey[700],
      thickness: 1,
      space: 0,
    ),
    textTheme: const TextTheme(
      bodyMedium: TextStyle(
        fontFamily: 'Roboto',
        fontSize: 16,
        color: Colors.white70,
      ),
      headlineSmall: TextStyle(
        fontFamily: 'Roboto',
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
      bodySmall: TextStyle(
        fontFamily: 'Roboto',
        fontSize: 14,
        color: Colors.white70,
      ),
    ),
  );
}