import 'package:e_commerce/size_configuration.dart';
import 'package:flutter/material.dart';

class OffreSpecial extends StatelessWidget {
  const OffreSpecial({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitre(
          text: "Special pour toi",
          press: () {},
        ),
        SizedBox(height: getProportionateScreenHeight(20)),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              OffreBanniere(
                image: 'assets/images/Image Banner 2.png',
                categories: 'Smarphones',
                numberOfArticles: 18,
                press: () {},
              ),
              OffreBanniere(
                image: 'assets/images/Image Banner 3.png',
                categories: 'Fashions',
                numberOfArticles: 25,
                press: () {},
              ),
              SizedBox(
                width: getProportionateScreenWidth(20),
              )
            ],
          ),
        ),
      ],
    );
  }
}

class SectionTitre extends StatelessWidget {
  const SectionTitre({
    super.key,
    required this.text,
    required this.press,
  });
  final String text;
  final GestureTapCallback press;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(23)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: TextStyle(
                fontSize: getProportionateScreenHeight(20),
                color: Colors.black),
          ),
          GestureDetector(
            onTap: press,
            child: Text("Voir plus"),
          ),
        ],
      ),
    );
  }
}

class OffreBanniere extends StatelessWidget {
  const OffreBanniere({
    super.key,
    required this.image,
    required this.categories,
    required this.numberOfArticles,
    required this.press,
  });
  final String image;
  final String categories;
  final int numberOfArticles;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Padding(
        padding: EdgeInsets.only(left: getProportionateScreenWidth(20)),
        child: SizedBox(
          width: getProportionateScreenWidth(238),
          height: getProportionateScreenHeight(100),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Stack(children: [
              Image.asset(
                image,
                fit: BoxFit.cover,
              ),
              Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                      Color(0xFF343434).withOpacity(0.4),
                      Color(0xFF343434).withOpacity(0.15),
                    ])),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(16),
                    vertical: getProportionateScreenHeight(10)),
                child: Text.rich(
                    TextSpan(style: TextStyle(color: Colors.white), children: [
                  TextSpan(
                      text: "$categories\n",
                      style: TextStyle(
                        fontSize: getProportionateScreenWidth(18),
                        fontWeight: FontWeight.bold,
                      )),
                  TextSpan(text: "$numberOfArticles Brands")
                ])),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
