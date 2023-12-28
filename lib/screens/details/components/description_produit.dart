import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constant.dart';
import '../../../models/product.dart';
import '../../../size_configuration.dart';

class DescriptionProduit extends StatelessWidget {
  const DescriptionProduit({
    super.key,
    required this.product,
    required this.onpress,
  });

  final Product product;
  final GestureTapCallback onpress;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: getProportionateScreenHeight(17)),
        Padding(
          padding: EdgeInsets.only(right: getProportionateScreenWidth(50)),
          child: Text(
            "${product.title}",
            style: TextStyle(
                color: Colors.black,
                fontSize: getProportionateScreenWidth(23),
                fontWeight: FontWeight.w500),
          ),
        ),
        SizedBox(height: getProportionateScreenHeight(30)),
        Align(
          alignment: Alignment.centerRight,
          child: Container(
            width: getProportionateScreenWidth(64),
            height: getProportionateScreenHeight(38),
            decoration: BoxDecoration(
                color: Color(0xFFFFE6E6),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    bottomLeft: Radius.circular(15))),
            child: product.isFavourite
                ? Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SvgPicture.asset(
                      "assets/icons/Heart Icon_2.svg",
                      color: Colors.red,
                      width: getProportionateScreenWidth(10),
                      height: getProportionateScreenHeight(5),
                    ),
                  )
                : Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SvgPicture.asset("assets/icons/Heart Icon_2.svg"),
                  ),
          ),
        ),
        SizedBox(height: getProportionateScreenHeight(8)),
        Padding(
          padding: EdgeInsets.only(
              right: getProportionateScreenWidth(50),
              left: getProportionateScreenWidth(15)),
          child: Text(
            "${product.description}",
            style: TextStyle(
              fontSize: 16,
            ),
          ),
        ),
        SizedBox(height: getProportionateScreenHeight(10)),
        GestureDetector(
          onTap: onpress,
          child: Padding(
            padding: EdgeInsets.only(
                left: getProportionateScreenWidth(15),
                bottom: getProportionateScreenWidth(7)),
            child: Row(
              children: [
                Text(
                  "See More Details",
                  style: TextStyle(
                      color: kPrimaryColor,
                      fontSize: 15,
                      fontWeight: FontWeight.w600),
                ),
                Icon(
                  Icons.navigate_next_outlined,
                  color: kPrimaryColor,
                  size: 27,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
