import 'package:e_commerce/constant.dart';
import 'package:e_commerce/size_configuration.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../models/product.dart';

class CardProduit extends StatefulWidget {
  const CardProduit({
    super.key,
    this.width = 140,
    this.aspectRatio = 1.02,
    required this.product,
    required this.press,
  });
  final double width, aspectRatio;
  final Product product;
  final GestureTapCallback press;

  @override
  State<CardProduit> createState() => _CardProduitState();
}

class _CardProduitState extends State<CardProduit> {
  @override
  Widget build(BuildContext context) {
    bool islike = false;
    return Padding(
      padding: EdgeInsets.only(left: getProportionateScreenWidth(20)),
      child: GestureDetector(
        onTap: widget.press,
        child: SizedBox(
          width: widget.width,
          child: Column(
            children: [
              AspectRatio(
                aspectRatio: widget.aspectRatio,
                child: Container(
                  padding: EdgeInsets.all(getProportionateScreenWidth(20)),
                  decoration: BoxDecoration(
                    color: kSecondaryColor.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Image.asset(widget.product.images[0]),
                ),
              ),
              Text(
                "${widget.product.title}",
                style: TextStyle(color: Colors.black),
                maxLines: 2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "\XAF ${widget.product.price}",
                    style: TextStyle(
                      color: kPrimaryColor,
                      fontSize: getProportionateScreenWidth(20),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        islike = !islike;
                      });
                    },
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      padding: EdgeInsets.all(getProportionateScreenWidth(8)),
                      height: getProportionateScreenHeight(28),
                      width: getProportionateScreenWidth(28),
                      child: widget.product.isFavourite
                          ? SvgPicture.asset(
                              "assets/icons/Heart Icon_2.svg",
                              color: Colors.red,
                            )
                          : SvgPicture.asset(
                              "assets/icons/Heart Icon_2.svg",
                            ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
