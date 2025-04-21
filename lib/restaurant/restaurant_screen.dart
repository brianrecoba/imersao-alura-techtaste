import 'package:flutter/material.dart';
import 'package:mobile_mobile_techtaste/model/dish.dart';
import 'package:mobile_mobile_techtaste/model/restaurant.dart';
import 'package:mobile_mobile_techtaste/ui/_core/bag_provider.dart';
import 'package:mobile_mobile_techtaste/ui/_core/widgets/appbar.dart';
import 'package:provider/provider.dart';

class RestaurantScreen extends StatelessWidget {
  final Restaurant restaurant;
  const RestaurantScreen({super.key, required this.restaurant});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBar(context: context, title: restaurant.name),
      body: Center(
        child: Column(
          spacing: 12,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/${restaurant.imagePath}',
              width: 128,
            ),
            const Text(
              'Mais pedidos',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Column(
              children: List.generate(restaurant.dishes.length, (index) {
                DishModel dish = restaurant.dishes[index];
                return ListTile(
                  leading: Image.asset(
                    'assets/dishes/default.png',
                    width: 48,
                  ),
                  title: Text(dish.name),
                  subtitle: Text("R\$ ${dish.price.toStringAsFixed(2)}"),
                  trailing: IconButton(
                      onPressed: () {
                        context.read<BagProvider>().addAllDishes([dish]);
                      },
                      icon: const Icon(Icons.add)),
                );
              }),
            )
          ],
        ),
      ),
    );
  }
}
