import 'package:e_commerce/constant.dart';
import 'package:e_commerce/models/Cart.dart';
import 'package:e_commerce/screens/cart/components/body.dart';
import 'package:e_commerce/size_configuration.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CartScreen extends StatelessWidget {
  static String routeName = "/cart";
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(),
      body: Body(),
      bottomNavigationBar: checkOurCard(),
    );
  }

  Container checkOurCard() {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(20),
        vertical: getProportionateScreenHeight(20),
      ),
      // height: 180,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -15),
            blurRadius: 20,
            color: Color(0xFFDADADA).withOpacity(0.15),
          )
        ],
      ),
      child: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  width: getProportionateScreenWidth(40),
                  height: getProportionateScreenHeight(40),
                  decoration: BoxDecoration(
                      color: Color(0xFFF5F6F9),
                      borderRadius: BorderRadius.circular(10)),
                  child: SvgPicture.asset('assets/icons/receipt.svg'),
                ),
                Spacer(),
                Text(
                  "Add voucher code ",
                  style: TextStyle(fontSize: 15),
                ),
                SizedBox(width: 10),
                Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 12,
                  color: kTextColor,
                )
              ],
            ),
            SizedBox(height: getProportionateScreenHeight(10)),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Total:",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                      ),
                    ),
                    Text(
                      "\XAF 9749",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 23,
                          fontWeight: FontWeight.w600),
                    )
                  ],
                ),
                Spacer(),
                Container(
                  width: getProportionateScreenWidth(200),
                  height: getProportionateScreenHeight(60),
                  child: defaultBouton("Check Out ", () => null),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  AppBar customAppBar() {
    return AppBar(
      title: Column(
        children: [
          Text("Votre Panier",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 24)),
          Text(
            "${demoCart.length} items",
          ),
        ],
      ),
    );
  }
}
