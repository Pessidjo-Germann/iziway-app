import 'package:e_commerce/models/product.dart';
import 'package:e_commerce/screens/details/components/Body.dart';
import 'package:e_commerce/size_configuration.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../components/bouton_circulaire.dart';
import 'components/box_rating.dart';

class DetailsScreens extends StatelessWidget {
  static String routeName = "/details_screen";
  const DetailsScreens({super.key});

  @override
  Widget build(BuildContext context) {
    final arguments =
        ModalRoute.of(context)!.settings.arguments as ProductDetailsArguments;
    return Scaffold(
      backgroundColor: const Color(0xFFF5F6F9),
      appBar: AppBar(
        backgroundColor: const Color(0xFFF5F6F9),
        leadingWidth: 68,
        leading: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: Container(
                width: getProportionateScreenWidth(30),
                // height: getProportionateScreenHeight(30),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: BoutonCirculaire(
                  press: () => Navigator.pop(context),
                  iconData: Icons.arrow_back_rounded,
                ),
              ),
            ),
          ],
        ),
        actions: [
          BoxDeRating(
            rating: arguments.product.rating.toString(),
          )
        ],
      ),
      body: Body(
        product: arguments.product,
      ),
    );
  }
}

class ProductDetailsArguments {
  final Product product;

  ProductDetailsArguments({required this.product});
}
