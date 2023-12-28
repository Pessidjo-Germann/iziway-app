import 'package:flutter/material.dart';

class Product {
  late final String title, description;
  late final List<String> images;
  late final List<Color> colors;
  late final double rating, price;
  late final bool isFavourite, isPopular;
  late final int id;

  Product({
    required this.colors,
    required this.images,
    required this.title,
    required this.price,
    required this.id,
    required this.description,
    this.rating = 0.0,
    this.isFavourite = false,
    this.isPopular = false,
  });
}

String descriprition =
    "Wireless Controller for PS4 gives you what your want in your gaming from over precision control your game to sharing";
List<Product> demoProducts = [
  Product(
    colors: const [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white
    ],
    images: [
      "assets/images/ps4_console_white_1.png",
      "assets/images/ps4_console_white_2.png",
      "assets/images/ps4_console_white_3.png",
      "assets/images/ps4_console_white_4.png",
    ],
    title: "Wireless Controller for PS4",
    price: 699,
    description: descriprition,
    rating: 4.5,
    isFavourite: true,
    isPopular: true,
    id: 0,
  ),
  Product(
    colors: const [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white
    ],
    images: ["assets/images/Image_Popular_Product_2.png"],
    title: 'Nike Sport White - Man',
    price: 505,
    rating: 4.1,
    isPopular: true,
    id: 2,
    description: descriprition,
  ),
  Product(
      colors: const [
        Color(0xFFF6625E),
        Color(0xFF836DB8),
        Color(0xFFDECB9C),
        Colors.white
      ],
      images: [
        'assets/images/glap.png'
      ],
      title: 'Gloves C Omega - Polygon',
      price: 365,
      description: descriprition,
      isFavourite: true,
      rating: 4.1,
      id: 1,
      isPopular: true),
  Product(
      colors: const [
        Color(0xFFF6625E),
        Color(0xFF836DB8),
        Color(0xFFDECB9C),
        Colors.white
      ],
      images: [
        'assets/images/wireless headset.png'
      ],
      title: 'Logitech Head',
      price: 202,
      description: 'description',
      rating: 4.1,
      id: 3,
      isFavourite: true)
];
