import 'package:food_app/widgets/recommended_cards.dart';

class RecommendedProducts {
  //properties
  final String id;
  final String name;
  final String location;
  final String kitchenName;
  final double price;
  final double rating;
  final String image;

  //constructor:ensures that the object starts in a consistent and predictable state[creates objects and a new isntance]
  RecommendedProducts({
    required this.id,
    required this.name,
    required this.location,
    required this.image,
    required this.price,
    required this.rating,
    required this.kitchenName,
  });

  //deserialize data{convert the class object to a json string}
  factory RecommendedProducts.fromJson(Map<String, dynamic> json) {
    return RecommendedProducts(
      id: json['id'],
      name: json['name'],
      location: json['location'],
      image: json['image'],
      price: json['price'],
      rating: json['rating'],
      kitchenName: json['kitchenName'],
    );
  }

  //convert to map
  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'location': location,
    'image': image,
    'price': price,
    'rating': rating,
    'kitchenName': kitchenName,
  };

  //list of recommended products
  static List<RecommendedProducts> recommendedProducts = [
    RecommendedProducts(
      id: "7",
      name: "Blue",
      location: "location",
      image: 'assets/cakes.jpg',
      price: 5.99,
      rating: 5.0,
      kitchenName: "bob's kitchen",
    ),

    RecommendedProducts(
      id: "8",
      name: "Cakez ",
      location: "location",
      image: 'assets/cakes_2.jpg',
      price: 5.99,
      rating: 4.5,
      kitchenName: "bob's kitchen",
    ),

    RecommendedProducts(
      id: "9",
      name: "Choco",
      location: "location",
      image: 'assets/cakes_3.jpg',
      price: 5.99,
      rating: 4.0,
      kitchenName: "bob's kitchen",
    ),
  ];
}
