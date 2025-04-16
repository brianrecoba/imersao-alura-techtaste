import 'package:flutter/material.dart';
import 'package:mobile_mobile_techtaste/ui/splash/splash_screen.dart';
import 'package:mobile_mobile_techtaste/ui/_core/app_theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.appTheme,
      home: const SplashScreen(),
    );
  }
}
