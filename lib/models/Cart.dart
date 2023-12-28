import 'package:e_commerce/models/Product.dart';

class Cart {
  final Product product;
  final int nmbreOfItems;

  Cart({required this.product, required this.nmbreOfItems});
}

List<Cart> demoCart = [
  Cart(product: demoProducts[0], nmbreOfItems: 3),
  Cart(product: demoProducts[1], nmbreOfItems: 2),
  Cart(product: demoProducts[2], nmbreOfItems: 3),
];
