import 'package:flutter/material.dart';

class AppThemes {
  static const Color _primary = Color(0xFF4C58DC);
  static const Color _secondary = Color(0xFFFF8686);

  static const Color _darkScaffoldColor = Color(0xFF101018);
  static const Color _lightScaffoldColor = Colors.white;

  //
  // Dark
  //
  static final ThemeData dark = ThemeData(
    useMaterial3: true,
    appBarTheme: const AppBarTheme(
      centerTitle: false,
      surfaceTintColor: _darkScaffoldColor,
      titleTextStyle: TextStyle(
        color: _primary,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      iconTheme: IconThemeData(color: Colors.white),
    ),
    scaffoldBackgroundColor: _darkScaffoldColor,
    primaryColor: _primary,
    iconTheme: const IconThemeData(color: Colors.white),
    dividerTheme: DividerThemeData(color: Colors.grey.shade200, thickness: 0.5),
    dividerColor: Colors.grey.shade300,
    listTileTheme: const ListTileThemeData(
      contentPadding: EdgeInsets.symmetric(horizontal: 16),
      horizontalTitleGap: 10,
    ),
    dialogTheme: const DialogTheme(surfaceTintColor: _darkScaffoldColor),
    bottomSheetTheme:
        const BottomSheetThemeData(surfaceTintColor: _darkScaffoldColor),
    colorScheme: const ColorScheme.dark(
      primary: _primary,
      secondary: _secondary,
    ),
  );

  //
  // Light
  //
  static final ThemeData light = ThemeData(
    useMaterial3: true,
    appBarTheme: const AppBarTheme(
      centerTitle: false,
      surfaceTintColor: _lightScaffoldColor,
      titleTextStyle: TextStyle(
        color: _primary,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      iconTheme: IconThemeData(color: Colors.black),
    ),
    scaffoldBackgroundColor: Colors.white,
    primaryColor: _primary,
    iconTheme: const IconThemeData(color: Colors.black),
    dividerTheme: DividerThemeData(color: Colors.grey.shade200, thickness: 0.5),
    dividerColor: Colors.grey.shade300,
    listTileTheme: const ListTileThemeData(
      contentPadding: EdgeInsets.symmetric(horizontal: 16),
      horizontalTitleGap: 10,
    ),
    dialogTheme: const DialogTheme(surfaceTintColor: _lightScaffoldColor),
    bottomSheetTheme:
        const BottomSheetThemeData(surfaceTintColor: _lightScaffoldColor),
    colorScheme: const ColorScheme.light(
      primary: _primary,
      secondary: _secondary,
    ),
  );
}
