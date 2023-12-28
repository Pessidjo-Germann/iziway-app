import 'package:e_commerce/size_configuration.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> categories = [
      {"icon": "assets/icons/Flash Icon.svg", "text": "Vente Flash"},
      {"icon": "assets/icons/Bill Icon.svg", "text": "Bill"},
      {"icon": "assets/icons/Game Icon.svg", "text": "Jeux"},
      {"icon": "assets/icons/Gift Icon.svg", "text": "Cadeau "},
      {"icon": "assets/icons/Discover.svg", "text": "More"}
    ];
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(10)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ...List.generate(
              categories.length,
              (index) => BoitesDeCategories(
                  text: categories[index]['text'],
                  icon: categories[index]['icon'],
                  press: () {})),
        ],
      ),
    );
  }
}

class BoitesDeCategories extends StatelessWidget {
  const BoitesDeCategories({
    super.key,
    required this.text,
    required this.icon,
    required this.press,
  });

  final String text, icon;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: SizedBox(
        width: getProportionateScreenWidth(50),
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 1,
              child: Container(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenHeight(10)),
                decoration: BoxDecoration(
                  color: Color(0xFFFFECDF),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: SvgPicture.asset(icon),
              ),
            ),
            Text(
              text,
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
