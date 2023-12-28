import 'package:e_commerce/size_configuration.dart';
import 'package:flutter/material.dart';

//const kPrimaryColor = Color(0xFFFF7643);
const kPrimaryColor = Colors.orange;
const kPrimayLightColor = Color(0xFFFFECDF);

const kPrimaryGradientColor = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [Color(0xFFFFA53E), Color(0xFFFF7643)]);
const kSecondaryColor = Color(0xFF979797);
const kTextColor = Color(0xFF757575);
const kAnimationDuration = Duration(milliseconds: 200);
var kStyleBtn = OutlinedButton.styleFrom(
    minimumSize: Size(
        getProportionateScreenWidth(400), getProportionateScreenHeight(50)),
    //backgroundColor: const Color.fromARGB(255, 235, 72, 13),
    backgroundColor: Color.fromARGB(255, 2, 33, 59),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20),
    )); //style de mon boutton
var styleEntete = TextStyle(
  fontSize: getProportionateScreenHeight(28),
  color: Colors.black,
  fontWeight: FontWeight.bold,
); //style de l'entete
//erreur de formulaire
final RegExp emailValidator = RegExp(r"^[a-zA-z0-9.]+@[a-zA-z0-9]+\.[a-zA-Z]+");
const String kEmailNullError = "Please entrer votre email";
const String kInvalidEmailNullError = "Please entrer un email valid";
const String kPasswordNullError = "Please entrer votre mot de passe";
const String kShortPasswordError = "Mot de passe trop court";
const String kMatchPasswordError = "Pas de mot de pass correspondant";
const String kPasswordsError = "Les mots de pass ne correspondent pas";
const String kNameNullError = "Please entrer votre nom";
const String kPhoneNullError = "Please entrer votre numero de telephone";
const String kAddressNullError = "Please entrer votre address";

final optInputDecoration = InputDecoration(
  contentPadding:
      EdgeInsets.symmetric(vertical: getProportionateScreenWidth(15)),
  enabledBorder: outlineBorder(),
  focusedBorder: outlineBorder(),
  border: outlineBorder(),
);

OutlineInputBorder outlineBorder() {
  return OutlineInputBorder(
      borderRadius: BorderRadius.circular(15),
      borderSide: const BorderSide(color: kTextColor));
}

OutlinedButton defaultBouton(String text, Function() pressed) {
  return OutlinedButton(
    onPressed: pressed,
    style: kStyleBtn,
    child: Text(
      text,
      style: TextStyle(
          fontSize: getProportionateScreenWidth(18), color: Colors.white),
    ),
  );
}
