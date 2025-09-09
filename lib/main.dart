import 'package:dattebayo/core/di/service_locator.dart';
import 'package:dattebayo/core/theme/app_theme.dart';
import 'package:dattebayo/screens/spash/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  setupLocator();
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dattebayo',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system,
      home: SplashScreen(),
    );
  }
}
