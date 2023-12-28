import 'package:e_commerce/constant.dart';
import 'package:e_commerce/screens/cart/cart_screen.dart';
import 'package:e_commerce/screens/home/components/icon_notifications.dart';
import 'package:e_commerce/size_configuration.dart';
import 'package:flutter/material.dart';

class entete_recherche_acceuill extends StatelessWidget {
  const entete_recherche_acceuill({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: SizeConfig.screenWidth! * 0.6,
            height: 45,
            decoration: BoxDecoration(
              color: kSecondaryColor.withOpacity(0.1),
              borderRadius: BorderRadius.circular(15),
            ),
            child: TextField(
              onChanged: (value) {},
              decoration: InputDecoration(
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  hintText: "Recherche sur iziway..",
                  prefixIcon: Icon(Icons.search),
                  contentPadding: EdgeInsets.symmetric(
                      horizontal: getProportionateScreenHeight(20),
                      vertical: getProportionateScreenWidth(13))),
            ),
          ),
          IconNotification(
            icon: "assets/icons/Cart Icon.svg",
            nbreItems: 0,
            press: () {
              Navigator.pushNamed(context, CartScreen.routeName);
            },
          ),
          IconNotification(
            icon: "assets/icons/Bell.svg",
            nbreItems: 3,
            press: () {},
          ),
        ],
      ),
    );
  }
}
