import 'package:e_commerce/components/custom_bottom.dart';
import 'package:e_commerce/enum.dart';
import 'package:e_commerce/screens/home/components/body.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "/home";
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
      bottomNavigationBar: CustomBottomNavigation(selectMenu: MenuState.home),
    );
  }
}
