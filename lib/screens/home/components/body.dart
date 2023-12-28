import 'package:e_commerce/screens/home/components/baniere_reduction.dart';
import 'package:e_commerce/screens/home/components/categorie.dart';
import 'package:e_commerce/screens/home/components/home-header.dart';
import 'package:e_commerce/screens/home/components/offre_special.dart';
import 'package:e_commerce/screens/home/components/popular_product.dart';
import 'package:e_commerce/size_configuration.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: getProportionateScreenHeight(20)),
            const entete_recherche_acceuill(),
            SizedBox(height: getProportionateScreenHeight(30)),
            const BanniereReduction(),
            SizedBox(height: getProportionateScreenHeight(30)),
            const Categories(),
            SizedBox(height: getProportionateScreenHeight(30)),
            const OffreSpecial(),
            SizedBox(height: getProportionateScreenHeight(30)),
            const PopularProduct(),
          ],
        ),
      ),
    );
  }
}
