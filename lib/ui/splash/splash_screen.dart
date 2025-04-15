import 'package:flutter/material.dart';
import 'package:mobile_mobile_techtaste/ui/_core/app_colors.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Stack(
        children: [
          Image.asset('assets/banners/banner_splash.png'),
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                spacing: 32,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/logo.png',
                    width: 192,
                  ),
                  const Text(
                    'Um parceiro inovador para sua',
                    style: TextStyle(color: Colors.white),
                  ),
                  const Text(
                    'melhor experiência culinária!',
                    style: TextStyle(color: AppColors.mainColor),
                  ),
                  SizedBox(
                      width: double.infinity,
                      child:
                          ElevatedButton(onPressed: () {}, child: Text('Bora')))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
