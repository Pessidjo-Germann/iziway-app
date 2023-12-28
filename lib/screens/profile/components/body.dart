import 'package:e_commerce/constant.dart';
import 'package:e_commerce/screens/profile/components/profil_menu.dart';
import 'package:e_commerce/screens/profile/components/profile_pic.dart';
import 'package:e_commerce/size_configuration.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProfilePic(),
        SizedBox(height: 20),
        ProfilMenu(
          press: () {},
          icon: "assets/icons/User Icon.svg",
          text: "My Account",
        ),
        ProfilMenu(
          press: () {},
          icon: "assets/icons/Bell.svg",
          text: "Notifications",
        ),
        ProfilMenu(
          press: () {},
          icon: "assets/icons/Settings.svg",
          text: "Settings",
        ),
        ProfilMenu(
          press: () {},
          icon: "assets/icons/Question mark.svg",
          text: "Help Center",
        ),
        ProfilMenu(
          press: () {},
          icon: "assets/icons/Log out.svg",
          text: "Log Out",
        ),
      ],
    );
  }
}
