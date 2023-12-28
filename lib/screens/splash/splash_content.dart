import 'package:e_commerce/constant.dart';
import 'package:e_commerce/size_configuration.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({
    super.key,
    required this.text,
    required this.img,
  });
  final String? text, img;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //  const Text(
        //   "IZIWAY",
        //    style: TextStyle(
        //      fontSize: 45, color: kPrimaryColor, fontWeight: FontWeight.bold),
        //  ),
        // Image.asset(
        //   "assets/images/izeway2.png",
        //   height: getProportionateScreenHeight(94),
        // ),
        SvgPicture.asset(
          "assets/icons/izeway3.svg",
          height: getProportionateScreenHeight(93),
        ),
        Text(
          text!,
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 20,
        ),
        Image.asset(
          img!,
          height: getProportionateScreenHeight(265),
          width: getProportionateScreenWidth(235),
        ),
      ],
    );
  }
}
