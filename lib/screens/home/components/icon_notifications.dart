//ce fichier est reserve au icons de la page d'acceuil aebc nbre d'eleemtns

import 'package:e_commerce/size_configuration.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constant.dart';

class IconNotification extends StatelessWidget {
  const IconNotification({
    super.key,
    required this.icon,
    required this.nbreItems,
    required this.press,
  });
  final String icon;
  final Function() press;
  final int nbreItems;
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          width: getProportionateScreenWidth(46),
          height: getProportionateScreenHeight(46),
          decoration: BoxDecoration(
            color: kSecondaryColor.withOpacity(0.1),
            shape: BoxShape.circle,
          ),
          child: IconButton(onPressed: press, icon: SvgPicture.asset(icon)),
        ),
        if (nbreItems != 0)
          Positioned(
            top: -3,
            right: 0,
            child: Container(
              height: getProportionateScreenHeight(22),
              width: getProportionateScreenWidth(22),
              decoration: BoxDecoration(
                color: Colors.red,
                shape: BoxShape.circle,
                border: Border.all(
                  width: 1.5,
                  color: Colors.white,
                ),
              ),
              child: Center(
                child: Text(
                  "$nbreItems",
                  style: const TextStyle(color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          )
      ],
    );
  }
}
