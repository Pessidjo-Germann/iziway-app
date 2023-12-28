import 'package:e_commerce/constant.dart';
import 'package:e_commerce/screens/opt/components/opt_form.dart';
import 'package:e_commerce/screens/opt/opt_screen.dart';
import 'package:e_commerce/size_configuration.dart';
import 'package:flutter/material.dart';

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
          child: Column(children: [
            SizedBox(height: SizeConfig.screenHeigth! * 0.05),
            Text(
              "OPT Verification",
              style: styleEntete,
            ),
            const Text('We sent your code to +1 33 443***'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("This code will expire in 00:"),
                TweenAnimationBuilder(
                  tween: Tween(begin: 30.0, end: 0),
                  duration: const Duration(seconds: 30),
                  builder: (context, value, child) => Text(
                    value.toString(),
                    style: const TextStyle(color: kPrimaryColor),
                  ),
                ),
              ],
            ),
            SizedBox(height: SizeConfig.screenHeigth! * 0.15),
            const OptForm(),
            SizedBox(height: SizeConfig.screenHeigth! * 0.1),
            GestureDetector(
              onTap: () {
                Navigator.popAndPushNamed(context, OptScreen.routeName);
              },
              child: const Text(
                "Ressent OTP code",
                style: TextStyle(decoration: TextDecoration.underline),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
