import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfilePic extends StatelessWidget {
  const ProfilePic({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 115,
      width: 115,
      child: Stack(fit: StackFit.expand, clipBehavior: Clip.none, children: [
        CircleAvatar(
          backgroundImage: AssetImage("assets/images/Profile Image.png"),
        ),
        Positioned(
          right: -12,
          bottom: 0,
          child: GestureDetector(
            onTap: () {},
            child: Container(
              padding: const EdgeInsets.all(11),
              height: 45,
              width: 45,
              decoration: BoxDecoration(
                color: Color(0xFFF5F6F9),
                borderRadius: BorderRadius.circular(20),
              ),
              child: SvgPicture.asset(
                "assets/icons/Camera Icon.svg",
              ),
            ),
          ),
        )
      ]),
    );
  }
}
