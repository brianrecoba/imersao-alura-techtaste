import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mobile_mobile_techtaste/model/restaurant.dart';

class RestaurantData extends ChangeNotifier {
  List<Restaurant> listRestaurant = [];
  Future<void> getRestaurant() async {
    String jsonString = await rootBundle.loadString('assets/data.json');
    Map<String, dynamic> data = json.decode(jsonString);
    List<dynamic> restaurantsData = data['restaurants'];

    for (var restaurantData in restaurantsData) {
      Restaurant restaurant = Restaurant.fromMap(restaurantData);
      listRestaurant.add(restaurant);
    }
  }
}
