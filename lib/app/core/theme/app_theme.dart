import 'package:flutter/material.dart';
import 'app_text_theme_extension.dart';

class AppTheme {
  static final appDark = ThemeData(
    brightness: Brightness.dark,
    extensions: [
      AppTextThemeExtension.initialize(),
    ],
  );
}
