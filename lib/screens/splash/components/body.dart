import 'package:e_commerce/constant.dart';
import 'package:e_commerce/screens/sing_in/sing_in_screens.dart';
import 'package:e_commerce/screens/splash/splash_content.dart';
import 'package:e_commerce/size_configuration.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int curentPage = 0;
  List<Map<String, String>> splashData = [
    {
      "text": "Bienvenue a Iziway, Allons acheter!",
      "img": "assets/images/splash_1.png",
    },
    {
      "text":
          "Nous aidons les gens a se connecter avec\n nos boutiques partout au Cameroun",
      "img": "assets/images/splash_2.png",
    },
    {
      "text":
          "Nous montrons pourquoi faire du shopping est\n facile. Restez juste a la maison avec nous!",
      "img": "assets/images/splash_3.png",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            Expanded(
                flex: 3,
                child: PageView.builder(
                  onPageChanged: (value) {
                    setState(() {
                      curentPage = value;
                    });
                  },
                  itemCount: splashData.length,
                  itemBuilder: (context, index) => SplashContent(
                    text: splashData[index]['text'],
                    img: splashData[index]['img'],
                  ),
                )),
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(20)),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        splashData.length,
                        (index) => buildDot(index),
                      ),
                    ),
                    Spacer(),
                    defaultBouton("Continue",
                        () => Navigator.pushNamed(context, Signin.routeName)),
                    Spacer()
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildDot(int index) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: const EdgeInsets.only(right: 5),
      height: 6,
      width: curentPage == index ? 24 : 6,
      decoration: BoxDecoration(
        color: curentPage == index ? kPrimaryColor : Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
