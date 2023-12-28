import 'package:e_commerce/constant.dart';
import 'package:e_commerce/size_configuration.dart';
import 'package:flutter/material.dart';

import 'complete_profile_form.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenHeight(20)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeigth! * 0.02),
              Text(
                "Complete Profile",
                style: styleEntete,
              ),
              const Text(
                "Complete your detail or continue \nwith social media",
                textAlign: TextAlign.center,
              ),
              SizedBox(height: SizeConfig.screenHeigth! * 0.05),
              const CompleteProfilForm(),
              SizedBox(height: getProportionateScreenHeight(30)),
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
