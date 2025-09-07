import 'package:dattebayo/bottom_navigation/bottom_navigaation_screen.dart';
import 'package:dattebayo/core/di/service_locator.dart';
import 'package:dattebayo/core/theme/app_theme.dart';
import 'package:flutter/material.dart';

void main() {
  setupLocator();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dattebayo',
      theme: AppTheme.lightTheme, // светлая тема
      darkTheme: AppTheme.darkTheme, // тёмная тема
      themeMode: ThemeMode.system,
      home: BottomNavigationScreen(),
    );
  }
}
