import 'package:e_commerce/models/Cart.dart';
import 'package:e_commerce/size_configuration.dart';
import 'package:flutter/material.dart';

import 'cart_item_card.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: demoCart.length,
      itemBuilder: (context, index) => SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
              left: getProportionateScreenWidth(15),
              bottom: getProportionateScreenWidth(15)),
          child: Dismissible(
            direction: DismissDirection.endToStart,
            key: Key(demoCart[index].product.id.toString()),
            background: Container(
              decoration: BoxDecoration(
                color: Color(0xFFFFE6E6),
                borderRadius: BorderRadius.circular(24),
              ),
              child: Row(
                children: [
                  Spacer(),
                  Icon(
                    Icons.clear,
                    color: Colors.black,
                  ),
                ],
              ),
            ),
            child: CartItemCard(
              cart: demoCart[index],
            ),
            onDismissed: (direction) {
              setState(() {
                demoCart.removeAt(index);
              });
            },
          ),
        ),
      ),
    );
  }
}
