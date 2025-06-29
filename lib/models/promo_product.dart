import 'package:food_app/models/product.dart';

class PromoProduct {
  //properties
  final String id;
  final String name;
  final double price;
  final double percentageDiscount;
  final String image;
  final String promoName;

  //constructor
  PromoProduct({
    required this.id,
    required this.name,
    required this.price,
    required this.percentageDiscount,
    required this.image,
    required this.promoName,
  });

  //deserialization from json
  factory PromoProduct.fromJson(Map<String, dynamic> json) {
    return PromoProduct(
      id: json['id'].toString(),
      name: json['name'],
      price: json['price'].toDouble(),
      percentageDiscount: json['percentageDiscount'].toDouble(),
      image: json['image'],
      promoName: json['promoName'] ??'',
    );
  }
  //convert it to json map
  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'price': price,
    'percentageDiscount': percentageDiscount,
    'image': image,
    'promoName': promoName,
  };

  ///simulated promo products list from the db
  static List<PromoProduct> promoProducts = [
    PromoProduct(
      id: "1",
      name: 'burger',
      price: 3.25,
      percentageDiscount: 25.0,
      image: 'assets/fries.jpg',
      promoName:'Weekend Special'
    ),
    PromoProduct(
      id: "1",
      name: 'Weekend Special',
      price: 3.25,
      percentageDiscount: 25.0,
      image: 'assets/burgerpic.png',
      promoName: 'Weekend Special'
    ),
    PromoProduct(
      id: "1",
      name: 'burger',
      price: 3.25,
      percentageDiscount: 25.0,
      image: 'assets/fries.jpg',
      promoName: 'Weekend Special'
    ),
  ];
}
