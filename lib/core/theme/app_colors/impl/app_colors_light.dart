import 'package:dattebayo/core/theme/app_colors/interface/app_colors.dart';
import 'package:dattebayo/core/theme/app_colors/constant/constant_app_colors.dart';
import 'package:flutter/material.dart';

class AppColorsLight implements AppColors {
  @override
  Color primary = ConstantAppColors.narutoColor;
  //Color primary = const Color(0xFFFF7F19);

  @override
  Color secondary = const Color(0xFF4DA6FF);

  @override
  Color background = const Color(0xFFFFFDF7);

  @override
  Color cardBackground = const Color(0xFFF5F5F5);

  @override
  Color textPrimary = Colors.black;

  @override
  Color textSecondary = Colors.grey[700]!;

  @override
  Color error = const Color(0xFFD32F2F);

  @override
  Color success = const Color(0xFF2E7D32);

  @override
  Color warning = const Color(0xFFFFC107);

  @override
  Color icon = Colors.black87;

  @override
  Color divider = Colors.grey[400]!;

  @override
  Color overlay = Colors.black26;
}
