import 'package:flutter/material.dart';

import '../size_configuration.dart';

class BoutonCirculaire extends StatelessWidget {
  const BoutonCirculaire({
    super.key,
    required this.iconData,
    required this.press,
  });

  final IconData iconData;
  final GestureTapCallback press;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: getProportionateScreenWidth(40),
      height: getProportionateScreenHeight(40),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
        ),
        child: TextButton(
            onPressed: press,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 0),
              child: SafeArea(
                child: Icon(
                  iconData,
                  color: Colors.black,
                  size: 23,
                ),
              ),
            )),
      ),
    );
  }
}
