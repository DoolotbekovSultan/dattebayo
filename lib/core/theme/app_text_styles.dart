import 'package:dattebayo/core/theme/app_colors/app_colors_dark.dart';
import 'package:dattebayo/core/theme/app_colors/app_colors_light.dart';
import 'package:flutter/material.dart';

class AppTextStyles {
  // Светлая тема
  static TextTheme lightTextTheme = TextTheme(
    displayLarge: TextStyle(
      fontSize: 32,
      fontWeight: FontWeight.bold,
      color: AppColorsLight().textPrimary,
    ),
    displayMedium: TextStyle(
      fontSize: 28,
      fontWeight: FontWeight.bold,
      color: AppColorsLight().primary,
    ),
    displaySmall: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.bold,
      color: AppColorsLight().primary,
    ),
    titleLarge: TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.w600,
      color: AppColorsLight().textPrimary,
    ),
    titleMedium: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w500,
      color: AppColorsLight().textPrimary,
    ),
    titleSmall: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w500,
      color: AppColorsLight().textPrimary,
    ),
    bodyLarge: TextStyle(fontSize: 16, color: AppColorsLight().textPrimary),
    bodyMedium: TextStyle(fontSize: 14, color: AppColorsLight().textPrimary),
    bodySmall: TextStyle(fontSize: 12, color: AppColorsLight().textSecondary),
    labelLarge: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w600,
      color: AppColorsLight().textPrimary,
    ),
    labelMedium: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w500,
      color: AppColorsLight().textPrimary,
    ),
    labelSmall: TextStyle(
      fontSize: 10,
      fontWeight: FontWeight.w500,
      color: AppColorsLight().textSecondary,
    ),
  );

  // Тёмная тема
  static TextTheme darkTextTheme = TextTheme(
    displayLarge: TextStyle(
      fontSize: 32,
      fontWeight: FontWeight.bold,
      color: AppColorsDark().textPrimary,
    ),
    displayMedium: TextStyle(
      fontSize: 28,
      fontWeight: FontWeight.bold,
      color: AppColorsDark().primary,
    ),
    displaySmall: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.bold,
      color: AppColorsDark().primary,
    ),
    titleLarge: TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.w600,
      color: AppColorsDark().textPrimary,
    ),
    titleMedium: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w500,
      color: AppColorsDark().textPrimary,
    ),
    titleSmall: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w500,
      color: AppColorsDark().textPrimary,
    ),
    bodyLarge: TextStyle(fontSize: 16, color: AppColorsDark().textPrimary),
    bodyMedium: TextStyle(fontSize: 14, color: AppColorsDark().textPrimary),
    bodySmall: TextStyle(fontSize: 12, color: AppColorsDark().textSecondary),
    labelLarge: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w600,
      color: AppColorsDark().textPrimary,
    ),
    labelMedium: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w500,
      color: AppColorsDark().textPrimary,
    ),
    labelSmall: TextStyle(
      fontSize: 10,
      fontWeight: FontWeight.w500,
      color: AppColorsDark().textSecondary,
    ),
  );
}
