import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constant.dart';
import '../enum.dart';
import '../screens/home/home_screens.dart';
import '../screens/profile/profile_screen.dart';

class CustomBottomNavigation extends StatelessWidget {
  const CustomBottomNavigation({
    super.key,
    required this.selectMenu,
  });

  final MenuState selectMenu;
  @override
  Widget build(BuildContext context) {
    final Color inActiveIconColor = Color(0xFFB6B6B6);
    return Container(
      padding: EdgeInsets.symmetric(vertical: 15),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
          ),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, -15),
              blurRadius: 20,
              color: Color(0xFFDADADA).withOpacity(0.15),
            )
          ]),
      child: SafeArea(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            onPressed: () => Navigator.pushNamed(context, HomeScreen.routeName),
            icon: SvgPicture.asset(
              "assets/icons/Shop Icon.svg",
              color: MenuState.home == selectMenu
                  ? kPrimaryColor
                  : inActiveIconColor,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              "assets/icons/Heart Icon.svg",
              color: MenuState.favourite == selectMenu
                  ? kPrimaryColor
                  : inActiveIconColor,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              "assets/icons/Chat bubble Icon.svg",
              color: MenuState.message == selectMenu
                  ? kPrimaryColor
                  : inActiveIconColor,
            ),
          ),
          IconButton(
            onPressed: () =>
                Navigator.pushNamed(context, ProfileScreen.routeName),
            icon: SvgPicture.asset(
              "assets/icons/User Icon.svg",
              color: MenuState.profile == selectMenu
                  ? kPrimaryColor
                  : inActiveIconColor,
            ),
          ),
        ],
      )),
    );
  }
}
