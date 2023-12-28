import 'package:e_commerce/models/product.dart';
import 'package:e_commerce/screens/details/details_screens.dart';
import 'package:e_commerce/screens/home/components/offre_special.dart';
import 'package:flutter/material.dart';

import '../../../size_configuration.dart';
import 'card_produit.dart';

class PopularProduct extends StatelessWidget {
  const PopularProduct({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitre(
          text: "Popular product",
          press: () {},
        ),
        SizedBox(height: getProportionateScreenHeight(30)),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(
                demoProducts.length,
                (index) => CardProduit(
                  product: demoProducts[index],
                  press: () {
                    Navigator.pushNamed(
                      context,
                      DetailsScreens.routeName,
                      arguments:
                          ProductDetailsArguments(product: demoProducts[index]),
                    );
                  },
                ),
              ),
              SizedBox(
                width: getProportionateScreenWidth(20),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
