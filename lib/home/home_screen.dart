import 'package:flutter/material.dart';
import 'package:mobile_mobile_techtaste/data/categories_data.dart';
import 'package:mobile_mobile_techtaste/data/restaurant_data.dart';
import 'package:mobile_mobile_techtaste/home/widgets/category_widget.dart';
import 'package:mobile_mobile_techtaste/home/widgets/restaurant_widget.dart';
import 'package:mobile_mobile_techtaste/model/restaurant.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    RestaurantData restaurantData = Provider.of<RestaurantData>(context);
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.account_circle_rounded))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 32,
            children: [
              Center(
                child: Image.asset(
                  'assets/logo.png',
                  width: 147,
                ),
              ),
              const Text("Boas-vindas!"),
              TextFormField(),
              const Text('Escolha por categoria'),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  spacing: 8,
                  children: List.generate(CategoriesData.listCategories.length,
                      (index) {
                    return CategoryWidget(
                        category: CategoriesData.listCategories[index]);
                  }),
                ),
              ),
              Image.asset('assets/banners/banner_promo.png'),
              const Text('Bem avaliados'),
              Column(
                spacing: 16,
                children: List.generate(restaurantData.listRestaurant.length,
                    (index) {
                  Restaurant restaurant = restaurantData.listRestaurant[index];
                  return RestaurantWidget(restaurant: restaurant);
                }),
              ),
              const SizedBox(
                height: 64,
              )
            ],
          ),
        ),
      ),
    );
  }
}
