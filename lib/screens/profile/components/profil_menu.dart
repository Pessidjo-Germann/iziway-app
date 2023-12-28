import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constant.dart';

class ProfilMenu extends StatelessWidget {
  const ProfilMenu({
    super.key,
    required this.press,
    required this.text,
    required this.icon,
  });
  final GestureTapCallback press;
  final String text, icon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 18, vertical: 10),
      child: GestureDetector(
        onTap: press,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 13),
          height: 60,
          decoration: BoxDecoration(
            color: Color(0xFFF5F6F9),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Row(
            children: [
              SvgPicture.asset(
                icon,
                color: kPrimaryColor,
                width: 22,
              ),
              SizedBox(width: 20),
              Expanded(
                  child: Text(
                text,
                style: TextStyle(color: kTextColor),
              )),
              Icon(Icons.arrow_forward_ios),
            ],
          ),
        ),
      ),
    );
  }
}
