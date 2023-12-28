import 'package:e_commerce/constant.dart';
import 'package:e_commerce/enum.dart';
import 'package:e_commerce/screens/home/home_screens.dart';
import 'package:e_commerce/screens/profile/components/body.dart';
import 'package:flutter/material.dart';

import '../../components/custom_bottom.dart';

class ProfileScreen extends StatelessWidget {
  static String routeName = "/profile";
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
      ),
      body: Body(),
      bottomNavigationBar: CustomBottomNavigation(
        selectMenu: MenuState.profile,
      ),
    );
  }
}
