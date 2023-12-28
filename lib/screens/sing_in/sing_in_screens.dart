import 'package:e_commerce/screens/sing_in/components/body.dart';
import 'package:flutter/material.dart';

class Signin extends StatelessWidget {
  static String routeName = "/sing_in";
  const Signin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Sign In",
        ),
      ),
      body: Body(),
    );
  }
}
