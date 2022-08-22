import 'package:flutter/material.dart';

class Product{

  final int id;
  final String name, logo, desc, url;
  //final List<String> images;
  //final List<Color> colors;
  final double rating;
  //final bool isFavourite, isPopular;

  Product({
    required this.id,
    this.rating = 0.0,
    required this.name,
    required this.logo,
    required this.desc,
    required this.url,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'] as int,
      rating: json['rating'] as double,
      name: json['name'] as String,
      logo: json['logo'] as String,
      desc: json['desc'] as String,
      url: json['url'] as String,
    );
  }
}
