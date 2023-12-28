import 'package:e_commerce/constant.dart';
import 'package:e_commerce/size_configuration.dart';
import 'package:flutter/material.dart';

class OptForm extends StatefulWidget {
  const OptForm({super.key});

  @override
  State<OptForm> createState() => _OptFormState();
}

class _OptFormState extends State<OptForm> {
  FocusNode pinFocusNode2 = FocusNode();
  FocusNode pinFocusNode3 = FocusNode();
  FocusNode pinFocusNode4 = FocusNode();
  @override
  void initState() {
    // TODO: implement initState

    pinFocusNode2 = FocusNode();
    pinFocusNode3 = FocusNode();
    pinFocusNode4 = FocusNode();
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose

    pinFocusNode2.dispose();
    pinFocusNode3.dispose();
    pinFocusNode4.dispose();
    super.dispose();
  }

  void nextField(String valu, FocusNode pinFocusNode) {
    if (valu.length == 1) {
      pinFocusNode.requestFocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: getProportionateScreenWidth(60),
                child: Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: TextFormField(
                    autofocus: true,
                    obscureText: true,
                    keyboardType: TextInputType.number,
                    style: const TextStyle(fontSize: 28),
                    textAlign: TextAlign.center,
                    decoration: optInputDecoration,
                    onChanged: (value) {
                      nextField(value, pinFocusNode2);
                    },
                    //InputDecoration(),
                  ),
                ),
              ),
              SizedBox(
                width: getProportionateScreenWidth(60),
                child: Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: TextFormField(
                    focusNode: pinFocusNode2,
                    obscureText: true,
                    keyboardType: TextInputType.number,
                    style: const TextStyle(fontSize: 28),
                    textAlign: TextAlign.center,
                    decoration: optInputDecoration,
                    onChanged: (value) {
                      nextField(value, pinFocusNode3);
                    },
                    //InputDecoration(),
                  ),
                ),
              ),
              SizedBox(
                width: getProportionateScreenWidth(60),
                child: Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: TextFormField(
                    focusNode: pinFocusNode3,
                    obscureText: true,
                    keyboardType: TextInputType.number,
                    style: const TextStyle(fontSize: 28),
                    textAlign: TextAlign.center,
                    decoration: optInputDecoration,
                    onChanged: (value) {
                      nextField(value, pinFocusNode4);
                    },
                    //InputDecoration(),
                  ),
                ),
              ),
              SizedBox(
                width: getProportionateScreenWidth(60),
                child: Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: TextFormField(
                    focusNode: pinFocusNode4,
                    obscureText: true,
                    keyboardType: TextInputType.number,
                    style: const TextStyle(fontSize: 28),
                    textAlign: TextAlign.center,
                    decoration: optInputDecoration,
                    onChanged: (value) {
                      pinFocusNode4.unfocus();
                    },
                    //InputDecoration(),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: SizeConfig.screenHeigth! * 0.15,
          ),
          defaultBouton("Continue", () {}),
        ],
      ),
    );
  }
}
