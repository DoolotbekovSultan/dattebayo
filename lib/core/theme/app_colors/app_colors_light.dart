import 'package:dattebayo/core/theme/app_colors/app_colors.dart';
import 'package:flutter/material.dart';

class AppColorsLight implements AppColors {
  @override
  Color primary = const Color(0xFFFF6B00);
  // 🔶 Основной брендовый цвет (Наруто, энергия, кнопки, активные элементы, AppBar)

  @override
  Color secondary = const Color(0xFF1E3A8A);
  // 🔷 Дополнительный акцент (тёмно-синий шиноби, может использоваться для ссылок,
  // выделения второстепенных кнопок, иконок или табов)

  @override
  Color background = const Color(0xFFFFFDF7);
  // 🏳️ Главный фон всего приложения (Scaffold.backgroundColor)

  @override
  Color cardBackground = const Color(0xFFF5F5F5);
  // 🪶 Фон карточек (Card, Container), поверх основного фона

  @override
  Color itemTitle = const Color(0xFFFF6B00);

  @override
  Color textPrimary = Colors.black;
  // 📝 Основной цвет текста (заголовки, обычный текст)

  @override
  Color textSecondary = Colors.grey[700]!;
  // 📄 Второстепенный текст (описания, подписи, неактивные элементы)

  @override
  Color error = const Color(0xFFD32F2F);
  // ❌ Ошибки, предупреждения (Snackbar error, формы, иконки ошибки, алерты)

  @override
  Color success = const Color(0xFF2E7D32);
  // ✅ Успешные действия (например, "успешно сохранено", галочки, статус успеха)

  @override
  Color warning = const Color(0xFFFFC107);
  // ⚠️ Предупреждения (toast, значки, статусы, поля с проблемами)

  @override
  Color icon = Colors.black87;
  // 🎯 Иконки по умолчанию (AppBar, кнопки, карточки)

  @override
  Color divider = Colors.grey[400]!;
  // ➖ Линии разделителей (ListView, Divider, границы)

  @override
  Color overlay = Colors.black26;
  // 🌫️ Полупрозрачные оверлеи (Dialog, BottomSheet, затемнение фона)
}
