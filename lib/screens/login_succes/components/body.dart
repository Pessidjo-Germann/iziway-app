import 'package:e_commerce/constant.dart';
import 'package:e_commerce/screens/home/home_screens.dart';
import 'package:flutter/material.dart';

import '../../../size_configuration.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          SizedBox(height: SizeConfig.screenHeigth! * 0.1),
          Image.asset(
            'assets/images/success.png',
            height: getProportionateScreenHeight(300),
          ),
          SizedBox(height: SizeConfig.screenHeigth! * 0.1),
          Text(
            "Connexion Reussite",
            style: TextStyle(
              fontSize: getProportionateScreenWidth(28),
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: SizeConfig.screenHeigth! * 0.1),
          Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(90)),
              child: defaultBouton("Page d'acceuil", () {
                Navigator.pushNamed(context, HomeScreen.routeName);
              })),
        ],
      ),
    );
  }
}
