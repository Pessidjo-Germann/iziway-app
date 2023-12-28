import 'package:e_commerce/screens/login_succes/components/body.dart';
import 'package:flutter/material.dart';

class LoginSucessScrenn extends StatelessWidget {
  static String routeName = "/login_sucess";
  const LoginSucessScrenn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Connexion reussite"),
      ),
      body: Body(),
    );
  }
}
