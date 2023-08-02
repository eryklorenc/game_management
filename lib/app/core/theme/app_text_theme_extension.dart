import 'package:flutter/material.dart';
import 'package:game_management/app/core/theme/app_colors.dart';

extension XTheme on ThemeData {
  AppTextThemeExtension get xTextTheme => extension<AppTextThemeExtension>()!;
}

class AppTextThemeExtension extends ThemeExtension<AppTextThemeExtension> {
  AppTextThemeExtension({
    required this.h0,
    required this.h1,
    required this.h2,
    required this.body1,
    required this.body2,
    required this.body3,
    required this.body4,
    required this.body5,
    required this.notification,
    required this.contact,
    required this.date,
  });

  final TextStyle body1;

  final TextStyle body2;

  final TextStyle body3;

  final TextStyle body4;

  final TextStyle body5;

  final TextStyle h0;

  final TextStyle h1;

  final TextStyle h2;

  final TextStyle contact;

  final TextStyle date;

  final TextStyle notification;

  factory AppTextThemeExtension.initialize() => AppTextThemeExtension(
        body1: const TextStyle(
          color: AppColors.white,
          fontSize: 25,
          fontWeight: FontWeight.w600,
        ),
        body2: const TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 25,
          color: AppColors.white,
        ),
        body3: const TextStyle(
          color: AppColors.primary,
          fontSize: 35,
          fontWeight: FontWeight.w600,
        ),
        body4: const TextStyle(
          fontSize: 20,
          color: AppColors.white,
          fontWeight: FontWeight.w500,
        ),
        body5: const TextStyle(
          color: AppColors.white,
          fontSize: 18,
          fontWeight: FontWeight.w600,
        ),
        h0: const TextStyle(
          color: AppColors.white,
          fontSize: 23,
          fontWeight: FontWeight.w600,
        ),
        h1: const TextStyle(
          fontFamily: 'Ubuntu',
          fontSize: 24,
          height: 1,
        ),
        h2: const TextStyle(
          fontFamily: 'Ubuntu',
          fontSize: 16,
          fontWeight: FontWeight.w500,
          height: 0.71,
        ),
        notification: const TextStyle(
          fontFamily: 'Roboto',
          fontSize: 12,
          height: 0.76,
          letterSpacing: 1,
          color: Colors.white,
        ),
        date: const TextStyle(
          fontFamily: 'Ubuntu',
          fontSize: 14,
          fontWeight: FontWeight.w400,
          height: 0.87,
          color: Color(0xFF616161),
        ),
        contact: const TextStyle(
          fontFamily: 'Ubuntu',
          fontSize: 14,
          height: 0.87,
          fontWeight: FontWeight.w500,
          color: Color(0xFF616161),
        ),
      );

  @override
  ThemeExtension<AppTextThemeExtension> copyWith({
    TextStyle? body1,
    TextStyle? body2,
    TextStyle? body3,
    TextStyle? body4,
    TextStyle? body5,
    TextStyle? h0,
    TextStyle? h1,
    TextStyle? h2,
    TextStyle? contact,
    TextStyle? date,
    TextStyle? notification,
  }) {
    return AppTextThemeExtension(
      body1: body1 ?? this.body1,
      body2: body2 ?? this.body2,
      body3: body3 ?? this.body3,
      body4: body4 ?? this.body4,
      body5: body5 ?? this.body5,
      h0: h0 ?? this.h0,
      h1: h1 ?? this.h1,
      h2: h2 ?? this.h2,
      contact: contact ?? this.contact,
      date: date ?? this.date,
      notification: notification ?? this.notification,
    );
  }

  @override
  ThemeExtension<AppTextThemeExtension> lerp(
    covariant ThemeExtension<AppTextThemeExtension>? other,
    double t,
  ) {
    //* Temporary
    if (other == null || t == 0.0) return this;

    return other;
  }
}
