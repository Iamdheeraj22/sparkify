import 'package:flutter/material.dart';
import 'package:sparkify/cores/themes/app_pallete.dart';

class AppTheme {
  static OutlineInputBorder _border([Color color = AppPallete.borderColor]) =>
      OutlineInputBorder(
        borderSide: BorderSide(
          color: color,
          width: 3,
        ),
        borderRadius: BorderRadius.circular(10),
      );
  static final darkThemeMode = ThemeData.dark().copyWith(
    chipTheme: const ChipThemeData(
      color: WidgetStatePropertyAll(
        AppPallete.backgroundColor,
      ),
      side: BorderSide.none,
    ),
    scaffoldBackgroundColor: AppPallete.backgroundColor,
    appBarTheme: const AppBarTheme(
      backgroundColor: AppPallete.backgroundColor,
      elevation: 0,
      surfaceTintColor: AppPallete.backgroundColor,
      iconTheme: IconThemeData(
        color: AppPallete.white,
        size: 24,
      ),
      titleTextStyle: TextStyle(
        color: AppPallete.white,
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
    ),
    inputDecorationTheme: const InputDecorationTheme(
      contentPadding: EdgeInsets.all(27),
      /*     enabledBorder: _border(),
      focusedBorder: _border(AppPallete.gradient2),
      errorBorder: _border(AppPallete.redColor),
      focusedErrorBorder: _border(AppPallete.redColor),*/
    ),
    textTheme: textTheme(
      color: AppPallete.white,
    ),
    listTileTheme: ListTileThemeData(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: const BorderSide(
          color: AppPallete.white,
          width: 2,
        ),
      ),
      titleTextStyle: const TextStyle(
        color: AppPallete.white,
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
    ),
    iconTheme: const IconThemeData(
      color: AppPallete.white,
      size: 24,
    ),
    dialogTheme: DialogTheme(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      backgroundColor: AppPallete.white,
      titleTextStyle: const TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: AppPallete.black,
      ),
      contentTextStyle: const TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.bold,
        color: AppPallete.black,
      ),
    ),
  );
  static final lightThemMode = ThemeData.light().copyWith(
    chipTheme: const ChipThemeData(
      color: WidgetStatePropertyAll(
        AppPallete.black,
      ),
      side: BorderSide.none,
    ),
    scaffoldBackgroundColor: AppPallete.white,
    appBarTheme: const AppBarTheme(
      backgroundColor: AppPallete.white,
      elevation: 0,
      surfaceTintColor: AppPallete.white,
      titleTextStyle: TextStyle(
        color: AppPallete.black,
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
      iconTheme: IconThemeData(
        color: AppPallete.black,
        size: 24,
      ),
    ),
    inputDecorationTheme: const InputDecorationTheme(
      contentPadding: EdgeInsets.all(27),
      /*  enabledBorder: _border(),
      focusedBorder: _border(AppPallete.gradient2),
      errorBorder: _border(AppPallete.redColor),
      focusedErrorBorder: _border(AppPallete.redColor),*/
    ),
    textTheme: textTheme(
      color: AppPallete.black,
    ),
    listTileTheme: ListTileThemeData(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: const BorderSide(
          width: 2,
        ),
      ),
      titleTextStyle: const TextStyle(
        color: AppPallete.black,
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
    ),
    iconTheme: const IconThemeData(
      color: AppPallete.black,
      size: 24,
    ),
    dialogTheme: DialogTheme(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      backgroundColor: AppPallete.white,
      titleTextStyle: const TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: AppPallete.black,
      ),
      contentTextStyle: const TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.bold,
        color: AppPallete.black,
      ),
    ),
  );
}

TextTheme textTheme({required Color color}) => TextTheme(
      displayLarge:
          TextStyle(fontSize: 57, fontWeight: FontWeight.bold, color: color),
      displayMedium:
          TextStyle(fontSize: 45, fontWeight: FontWeight.bold, color: color),
      displaySmall:
          TextStyle(fontSize: 36, fontWeight: FontWeight.bold, color: color),
      headlineLarge:
          TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: color),
      headlineMedium:
          TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: color),
      headlineSmall:
          TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: color),
      titleLarge:
          TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: color),
      titleMedium:
          TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: color),
      titleSmall:
          TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: color),
      bodyLarge:
          TextStyle(fontSize: 16, fontWeight: FontWeight.normal, color: color),
      bodyMedium:
          TextStyle(fontSize: 14, fontWeight: FontWeight.normal, color: color),
      bodySmall:
          TextStyle(fontSize: 12, fontWeight: FontWeight.normal, color: color),
      labelLarge:
          TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: color),
      labelMedium:
          TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: color),
      labelSmall:
          TextStyle(fontSize: 11, fontWeight: FontWeight.bold, color: color),
    );
