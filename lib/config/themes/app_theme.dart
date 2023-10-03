import 'package:flutter/material.dart';

class AppThemes {
  static const Color _primary = Color(0xffBF1017);
  static const Color _secondary = Color.fromRGBO(2, 122, 190, 1);

  static const Color _darkScaffoldColor = Color(0xFF101018);
  static const Color _lightScaffoldColor = Color(0xFFF9F9F9);

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
    dividerColor: Colors.grey,
    listTileTheme: const ListTileThemeData(
      contentPadding: EdgeInsets.symmetric(horizontal: 16),
      horizontalTitleGap: 10,
    ),
    cardColor: Colors.black,
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
    dividerColor: Colors.grey,
    listTileTheme: const ListTileThemeData(
      contentPadding: EdgeInsets.symmetric(horizontal: 16),
      horizontalTitleGap: 10,
    ),
    cardColor: Colors.white,
    dialogTheme: const DialogTheme(surfaceTintColor: _lightScaffoldColor),
    bottomSheetTheme:
        const BottomSheetThemeData(surfaceTintColor: _lightScaffoldColor),
    colorScheme: const ColorScheme.light(
      primary: _primary,
      secondary: _secondary,
    ),
  );
}
