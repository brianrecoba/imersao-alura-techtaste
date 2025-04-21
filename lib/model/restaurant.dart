import 'package:mobile_mobile_techtaste/model/dish.dart';

class Restaurant {
  String id;
  String imagePath;
  String name;
  String description;
  double stars;
  int distance;
  List<String> categories;
  List<DishModel> dishes;

  Restaurant(
      {required this.id,
      required this.imagePath,
      required this.name,
      required this.description,
      required this.stars,
      required this.distance,
      required this.categories,
      required this.dishes});

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'imagePath': imagePath,
      'name': name,
      'description': description,
      'stars': stars,
      'distance': distance,
      'categories': categories,
      'dishes': dishes.map((dishes) => dishes.toMap()).toList()
    };
  }

  factory Restaurant.fromMap(Map<String, dynamic> map) {
    return Restaurant(
      id: map['id'],
      imagePath: map['imagePath'],
      name: map['name'],
      description: map['description'],
      stars: map['stars'],
      distance: map['distance'],
      categories: List<String>.from(map['categories']),
      dishes: List<DishModel>.from(
        map['dishes'].map((dishes) => DishModel.fromMap(dishes)),
      ),
    );
  }
  @override
  String toString() {
    return 'Restaurant(id: $id, imagePath: $imagePath, name: $name, description: $description, starts: $stars, distance: $distance, categories: $categories)';
  }
}
