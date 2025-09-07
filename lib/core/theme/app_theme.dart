import 'package:dattebayo/core/theme/app_colors/app_colors_dark.dart';
import 'package:dattebayo/core/theme/app_colors/app_colors_light.dart';
import 'package:flutter/material.dart';
import 'app_text_styles.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    useMaterial3: true,
    colorScheme: ColorScheme.light(
      primary: AppColorsLight().primary,
      secondary: AppColorsLight().secondary,
      surface: AppColorsLight().cardBackground,
      error: AppColorsLight().error,
      onPrimary: AppColorsLight().textPrimary,
      onSecondary: AppColorsLight().textPrimary,
      onSurface: AppColorsLight().textPrimary,
      onError: Colors.white,
    ),
    scaffoldBackgroundColor: AppColorsLight().background,
    cardTheme: CardThemeData(
      color: AppColorsLight().cardBackground,
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: AppColorsLight().primary,
      foregroundColor: AppColorsLight().textPrimary,
      elevation: 2,
      iconTheme: IconThemeData(color: AppColorsLight().icon),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColorsLight().primary,
        foregroundColor: AppColorsLight().textPrimary,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(foregroundColor: AppColorsLight().secondary),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: AppColorsLight().primary,
        side: BorderSide(color: AppColorsLight().primary),
      ),
    ),
    iconTheme: IconThemeData(color: AppColorsLight().icon),
    dividerTheme: DividerThemeData(
      color: AppColorsLight().divider,
      thickness: 1,
    ),
    snackBarTheme: SnackBarThemeData(
      backgroundColor: AppColorsLight().cardBackground,
      contentTextStyle: TextStyle(color: AppColorsLight().textPrimary),
      actionTextColor: AppColorsLight().secondary,
    ),
    dialogTheme: DialogThemeData(
      backgroundColor: AppColorsLight().cardBackground,
      titleTextStyle: AppTextStyles.lightTextTheme.titleLarge,
      contentTextStyle: AppTextStyles.lightTextTheme.bodyMedium,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    ),
    textTheme: AppTextStyles.lightTextTheme,
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    useMaterial3: true,
    colorScheme: ColorScheme.dark(
      primary: AppColorsDark().primary,
      secondary: AppColorsDark().secondary,
      surface: AppColorsDark().cardBackground,
      error: AppColorsDark().error,
      onPrimary: AppColorsDark().textPrimary,
      onSecondary: AppColorsDark().textPrimary,
      onSurface: AppColorsDark().textPrimary,
      onError: Colors.black,
    ),
    scaffoldBackgroundColor: AppColorsDark().background,
    cardTheme: CardThemeData(
      color: AppColorsDark().cardBackground,
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: AppColorsDark().primary,
      foregroundColor: AppColorsDark().textPrimary,
      elevation: 2,
      iconTheme: IconThemeData(color: AppColorsDark().icon),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColorsDark().primary,
        foregroundColor: AppColorsDark().textPrimary,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(foregroundColor: AppColorsDark().secondary),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: AppColorsDark().primary,
        side: BorderSide(color: AppColorsDark().primary),
      ),
    ),
    iconTheme: IconThemeData(color: AppColorsDark().icon),
    dividerTheme: DividerThemeData(
      color: AppColorsDark().divider,
      thickness: 1,
    ),
    snackBarTheme: SnackBarThemeData(
      backgroundColor: AppColorsDark().cardBackground,
      contentTextStyle: TextStyle(color: AppColorsDark().textPrimary),
      actionTextColor: AppColorsDark().secondary,
    ),
    dialogTheme: DialogThemeData(
      backgroundColor: AppColorsDark().cardBackground,
      titleTextStyle: AppTextStyles.darkTextTheme.titleLarge,
      contentTextStyle: AppTextStyles.darkTextTheme.bodyMedium,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    ),
    textTheme: AppTextStyles.darkTextTheme,
  );
}
