import 'package:flutter/material.dart';

import '../../../constant.dart';
import '../../../models/Cart.dart';
import '../../../size_configuration.dart';

class CartItemCard extends StatelessWidget {
  const CartItemCard({
    super.key,
    required this.cart,
  });

  final Cart cart;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: getProportionateScreenWidth(89),
          child: AspectRatio(
            aspectRatio: 0.88,
            child: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Color(0xFFF5F6F9),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Image.asset(cart.product.images[0]),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "${cart.product.title}",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 19,
                    fontWeight: FontWeight.w400),
                maxLines: 2,
              ),
              SizedBox(
                height: 13,
              ),
              Text.rich(
                TextSpan(
                    text: "\XAF ${cart.product.price}",
                    style: TextStyle(
                      color: kPrimaryColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    ),
                    children: [
                      TextSpan(text: "  "),
                      TextSpan(
                        text: "x${cart.nmbreOfItems}",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 17,
                        ),
                      )
                    ]),
              )
            ],
          ),
        ),
      ],
    );
  }
}
