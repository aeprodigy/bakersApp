import 'package:flutter/material.dart';

class Product {
  //properties
  final String id;
  final String name;
  final double price;
  final double rating;
  final String image;
  final String description;
  final String category;

//constructor
  Product({
    required this.id,
    required this.name,
    required this.price,
    required this.rating,
    required this.image,
    required this.description,
    required this.category,
  });

//deserialization from json
  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'].toString(),
      name: json['name'],
      price: json['price'].toDouble(),
      rating: json['rating'].toDouble(),
      image: json['image'],
      description: json['description'] ?? '',
      category: json['category'] ?? '',
    );
  }

//convert to a json map
  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "price": price,
    "rating": rating,
    "image": image,
    "description": description,
    "category": category,
  };

  /// Simulated product list (mock DB)
  static List<Product> products = [
    Product(
      id: "1",
      name: "Fries",
      price: 2.49,
      rating: 4.3,
      image: "assets/burgerpic.png",
      description: "Crispy golden fries served hot.",
      category: "Snacks",
    ),
    Product(
      id: "2",
      name: "Chicken Burger",
      price: 4.99,
      rating: 4.6,
      image: "assets/burger2.png",
      description: "Grilled chicken burger with lettuce and mayo.",
      category: "Burgers",
    ),
    Product(
      id: "3",
      name: "SandWhich",
      price: 4.50,
      rating: 4.7,
      image: "assets/waffle.png",
      description: "Juicy beef burger with cheese and pickles.",
      category: "Burgers",
    ),
    Product(
      id: "4",
      name: "Orange Slurp",
      price: 5.49,
      rating: 4.7,
      image: "assets/orange_juice.png",
      description: "Juicy beef burger with cheese and pickles.",
      category: "Burgers",
    ),
     Product(
      id: "5",
      name: "Smoothie Dark",
      price: 5.49,
      rating: 4.7,
      image: "assets/smoothie_coffee.png",
      description: "Juicy beef burger with cheese and pickles.",
      category: "Burgers",
    ),
     Product(
      id: "6",
      name: "Orange Punch",
      price: 5.49,
      rating: 4.7,
      image: "assets/smoothie.png",
      description: "Juicy beef burger with cheese and pickles.",
      category: "Burgers",
    ),
  ];
}
