import 'package:e_commerce/components/bouton_circulaire.dart';
import 'package:e_commerce/constant.dart';
import 'package:e_commerce/models/product.dart';
import 'package:e_commerce/screens/details/components/container_description_produit.dart';
import 'package:e_commerce/screens/details/components/description_produit.dart';
import 'package:e_commerce/screens/details/components/product_image.dart';
import 'package:e_commerce/size_configuration.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  final Product product;
  const Body({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ProductImages(product: product),
          SizedBox(height: 20),
          ContainerProduitDescription(
            color: Colors.white,
            child: Column(
              children: [
                DescriptionProduit(
                  product: product,
                  onpress: () {},
                ),
                ContainerProduitDescription(
                  color: Color(0xFFF6F7F9),
                  height: 100,
                  child: ColorDots(product: product),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: getProportionateScreenHeight(20),
                      left: getProportionateScreenWidth(60),
                      right: getProportionateScreenWidth(60)),
                  child: defaultBouton('Ajouter au panier', () => null),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ColorDots extends StatelessWidget {
  const ColorDots({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    int selecte = 3;
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: Row(
        children: [
          ...List.generate(
            product.colors.length,
            (index) => ColorDot(
              color: product.colors[index],
              isSelected: selecte == index,
            ),
          ),
          Spacer(),
          BoutonCirculaire(iconData: Icons.remove, press: () {}),
          SizedBox(width: getProportionateScreenWidth(10)),
          BoutonCirculaire(iconData: Icons.add, press: () {}),
        ],
      ),
    );
  }
}

class ColorDot extends StatefulWidget {
  const ColorDot({
    super.key,
    required this.color,
    this.isSelected = false,
  });

  final Color color;
  final bool isSelected;

  @override
  State<ColorDot> createState() => _ColorDotState();
}

class _ColorDotState extends State<ColorDot> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.all(8),
        width: getProportionateScreenHeight(40),
        height: getProportionateScreenHeight(40),
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
                color: widget.isSelected ? kPrimaryColor : Colors.transparent)),
        child: DecoratedBox(
            decoration:
                BoxDecoration(color: widget.color, shape: BoxShape.circle)),
      ),
    );
  }
}
