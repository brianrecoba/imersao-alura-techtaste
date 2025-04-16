import 'package:flutter/material.dart';
import 'package:mobile_mobile_techtaste/data/restaurant_data.dart';
import 'package:mobile_mobile_techtaste/ui/splash/splash_screen.dart';
import 'package:mobile_mobile_techtaste/ui/_core/app_theme.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  RestaurantData restaurantData = RestaurantData();
  await restaurantData.getRestaurant();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) {
          return restaurantData;
        })
      ],
      child: const MyApp(),
    ),
  );
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
