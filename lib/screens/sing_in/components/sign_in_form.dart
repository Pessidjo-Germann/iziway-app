import 'package:e_commerce/screens/forgot_password/forgot_password_screen.dart';
import 'package:e_commerce/screens/login_succes/login_sucess_screen.dart';
import 'package:e_commerce/screens/sing_in/components/form_error.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce/constant.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../size_configuration.dart';

class SignForm extends StatefulWidget {
  const SignForm({super.key});

  @override
  State<SignForm> createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  String email = '';
  String password = '';
  bool remember = false;
  final _keyForm = GlobalKey<FormState>();
  final List<String> error = [];
  var controllerEmail = TextEditingController();
  var controllerPassword = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _keyForm,
      child: Column(
        children: [
          buildEmail(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildPassword(),
          SizedBox(height: getProportionateScreenHeight(30)),
          SizedBox(height: getProportionateScreenHeight(30)),
          Row(
            children: [
              Checkbox(
                  value: remember,
                  activeColor: kPrimaryColor,
                  onChanged: (value) {
                    setState(() {
                      remember = value!;
                    });
                  }),
              const Text("Se rappeler de moi"),
              const Spacer(),
              GestureDetector(
                onTap: () => Navigator.pushNamed(
                    context, ForgotPasswordScreen.routeName),
                child: const Text(
                  "Mot de passe oublie",
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
              )
            ],
          ),
          FormError(error: error),
          SizedBox(height: getProportionateScreenHeight(30)),
          defaultBouton("Continue", () {
            if (_keyForm.currentState!.validate()) {
              //  _keyForm.currentState!.save();
              //apres validation on redirige vers le sucess login
              Navigator.pushNamed(context, LoginSucessScrenn.routeName);
            }
          }),
        ],
      ),
    );
  }

  Widget buildPassword() {
    return TextFormField(
      controller: controllerPassword,
      obscureText: true,
      onSaved: (value) => password != value,
      onChanged: (value) {
        if (value.isNotEmpty && error.contains(kPasswordNullError)) {
          setState(() {
            error.remove(kPasswordNullError);
          });
        } else if (value.length > 8 && error.contains(kShortPasswordError)) {
          setState(() {
            error.remove(kShortPasswordError);
          });
        }
      },
      validator: (value) {
        if (value!.isEmpty && !error.contains(kPasswordNullError)) {
          setState(() {
            error.add(kPasswordNullError);
          });
          return '';
        } else if (value.length < 8 && !error.contains(kShortPasswordError)) {
          setState(() {
            error.add(kShortPasswordError);
          });
          return '';
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Mot de passe",
        hintText: "Entrer votre mot de passe",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SvgPicture.asset("assets/icons/Lock.svg"),
        ),
      ),
    );
  }

  Widget buildEmail() {
    return TextFormField(
      controller: controllerEmail,
      keyboardType: TextInputType.emailAddress,
      onSaved: (value) => email != value,
      onChanged: (value) {
        setState(() {
          if (value.isNotEmpty && error.contains(kEmailNullError)) {
            error.remove(kEmailNullError);
          } else if (emailValidator.hasMatch(value) &&
              error.contains(kInvalidEmailNullError)) {
            setState(() {
              error.remove(kInvalidEmailNullError);
            });
          }
        });
      },
      validator: (value) {
        if (value!.isEmpty && !error.contains(kEmailNullError)) {
          setState(() {
            error.add(kEmailNullError);
          });
          return '';
        } else if (!emailValidator.hasMatch(value) &&
            !error.contains(kInvalidEmailNullError)) {
          setState(() {
            error.add(kInvalidEmailNullError);
          });
          return '';
        }

        return null;
      },
      decoration: InputDecoration(
        labelText: "Email",
        hintText: "Entrer votre email",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SvgPicture.asset(
            "assets/icons/Mail.svg",
          ),
        ),
      ),
    );
  }
}
