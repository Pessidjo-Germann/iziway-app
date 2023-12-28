import 'package:e_commerce/size_configuration.dart';
import 'package:flutter/material.dart';

class BanniereReduction extends StatelessWidget {
  const BanniereReduction({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(15),
            vertical: getProportionateScreenHeight(15)),
        margin:
            EdgeInsets.symmetric(horizontal: getProportionateScreenHeight(19)),
        width: double.infinity,
        height: getProportionateScreenHeight(85),
        decoration: BoxDecoration(
          color: const Color(0xFF4A3298),
          borderRadius: BorderRadius.circular(20),
        ),
        child: const Text.rich(TextSpan(
          text: "Weekend de surprise\n",
          style: TextStyle(color: Colors.white),
          children: [
            TextSpan(
                text: "Reduction de 20%",
                style: TextStyle(color: Colors.white, fontSize: 24))
          ],
        )));
  }
}
