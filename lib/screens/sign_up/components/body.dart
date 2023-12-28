import 'package:e_commerce/screens/sign_up/components/sign_up_form.dart';
import 'package:e_commerce/screens/sing_in/components/social_card.dart';
import 'package:e_commerce/size_configuration.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenHeight(20)),
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeigth! * 0.01),
              Text(
                "Register Account",
                style: TextStyle(
                  fontSize: getProportionateScreenWidth(28),
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Complete your details or continue\n with social media",
                textAlign: TextAlign.center,
              ),
              SizedBox(height: SizeConfig.screenHeigth! * 0.07),
              SignUpForm(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SocialCard(
                    icon: "assets/icons/facebook-2.svg",
                    press: () {},
                  ),
                  SocialCard(
                    icon: "assets/icons/google-icon.svg",
                    press: () {},
                  ),
                  SocialCard(
                    icon: "assets/icons/twitter.svg",
                    press: () {},
                  ),
                ],
              ),
              SizedBox(height: SizeConfig.screenHeigth! * 0.02),
              const Text(
                "By continuing your confirm that you agree \nwith our terms and condition",
                style: TextStyle(),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
