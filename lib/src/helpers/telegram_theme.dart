import 'package:flutter/material.dart';
import 'package:telegram_mini_app/src/mini_app.dart';
import 'package:telegram_mini_app/src/helpers/color_utils.dart';

/// Implement theme colors from telegram `themeParams` to flutter `ThemeData`
class TelegramTheme {
  /// Get current theme
  static ThemeData? get currentTheme => isDarkMode ? dark : light;

  /// Get light theme
  static ThemeData get light => ThemeData.light().copyWith(
        primaryColor: rawTheme?.primaryColor,
        scaffoldBackgroundColor: rawTheme?.scaffoldBackgroundColor,
        elevatedButtonTheme: rawTheme?.elevatedButtonTheme,
        textButtonTheme: rawTheme?.textButtonTheme,
        appBarTheme: rawTheme?.appBarTheme,
      );

  /// Get dark theme
  static ThemeData get dark {
    return ThemeData.dark().copyWith(
      primaryColor: rawTheme?.primaryColor,
      scaffoldBackgroundColor: rawTheme?.scaffoldBackgroundColor,
      elevatedButtonTheme: rawTheme?.elevatedButtonTheme,
      textButtonTheme: rawTheme?.textButtonTheme,
      appBarTheme: rawTheme?.appBarTheme,
    );
  }

  /// Raw themData from telegram `themeParams`
  /// This will return null if the theme is not supported (not telegram web)
  static ThemeData? get rawTheme {
    if (!isSupported) return null;
    return ThemeData(
      primaryColor: themeParams.bg_color.toColor(),
      scaffoldBackgroundColor: themeParams.secondary_bg_color.toColor(),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: themeParams.button_color.toColor(),
          textStyle: TextStyle(
            color: themeParams.button_text_color.toColor(),
          ),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          backgroundColor: themeParams.button_color.toColor(),
          textStyle: TextStyle(
            color: themeParams.button_text_color.toColor(),
          ),
        ),
      ),
      appBarTheme: AppBarTheme(
        titleTextStyle: TextStyle(
          color: themeParams.text_color.toColor(),
        ),
        backgroundColor: themeParams.bg_color.toColor(),
      ),
    );
  }
}
