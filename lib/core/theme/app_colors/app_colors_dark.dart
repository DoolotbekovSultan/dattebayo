import 'package:dattebayo/core/theme/app_colors/app_colors.dart';
import 'package:flutter/material.dart';

class AppColorsDark implements AppColors {
  @override
  Color primary = const Color(0xFFFF6B00); // Оранжевый чакры Наруто
  @override
  Color secondary = const Color(0xFFB71C1C); // Красный Акацки / Шаринган
  @override
  Color background = const Color(0xFF0D0D0D); // Очень тёмный фон (ночь)
  @override
  Color cardBackground = const Color(0xFF1A1A1A);
  @override
  Color itemTitle = const Color(0xFFFF6B00); // Карточки чуть светлее
  @override
  Color textPrimary = Colors.white; // Основной текст
  @override
  Color textSecondary = Colors.grey[400]!; // Второстепенный текст
  @override
  Color error = const Color(0xFFD32F2F); // Ошибки (опасность, кровь)
  @override
  Color success = const Color(0xFF2E7D32); // Успех (лес Конохи)
  @override
  Color warning = const Color(0xFFFFC107); // Предупреждение (Курама)
  @override
  Color icon = Colors.white70; // Иконки не яркие, чтобы не мешали
  @override
  Color divider = Colors.grey[700]!; // Лёгкие линии-разделители
  @override
  Color overlay = Colors.white10; // Лёгкая дымка для оверлеев
}
