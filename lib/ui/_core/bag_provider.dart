import 'package:flutter/material.dart';
import 'package:mobile_mobile_techtaste/model/dish.dart';

class BagProvider extends ChangeNotifier {
  List<DishModel> dishesOnBag = [];

  addAllDishes(List<DishModel> dishes) {
    dishesOnBag.addAll(dishes);
    notifyListeners();
  }

  removeDish(DishModel dish) {
    dishesOnBag.remove(dish);
    notifyListeners();
  }

  clearBag() {
    dishesOnBag.clear();
    notifyListeners();
  }

  Map<DishModel, int> getMapByAmount() {
    Map<DishModel, int> mapResult = {};
    for (DishModel dish in dishesOnBag) {
      if (mapResult[dish] == null) {
        mapResult[dish] = 1;
      } else {
        mapResult[dish] = mapResult[dish]! + 1;
      }
    }
    return mapResult;
  }
}
