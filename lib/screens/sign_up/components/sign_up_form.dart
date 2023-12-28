import 'package:e_commerce/screens/complete_profile/complete_profile_screen.dart';
import 'package:e_commerce/screens/sing_in/components/form_error.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constant.dart';
import '../../../size_configuration.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final List<String> error = [];
  String email = '';
  String password = '';
  String confirmPassword = '';
  final _keyForm = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _keyForm,
      child: Column(
        children: [
          buildEmail(),
          SizedBox(height: getProportionateScreenHeight(30)),
          builPassword(),
          SizedBox(height: getProportionateScreenHeight(30)),
          builConfirmPassword(),
          SizedBox(height: getProportionateScreenHeight(30)),
          FormError(error: error),
          SizedBox(height: getProportionateScreenHeight(23)),
          defaultBouton("Continue", () {
            if (_keyForm.currentState!.validate()) {
              _keyForm.currentState!.save();
              //apres validation on redirige vers le sucess login
              Navigator.pushNamed(context, CompleteProfileScreen.routeName);
            }
          }),
          SizedBox(height: SizeConfig.screenHeigth! * 0.08),
        ],
      ),
    );
  }

  TextFormField builPassword() {
    return TextFormField(
      keyboardType: TextInputType.text,
      obscureText: true,
      onSaved: (value) => password != value,
      onChanged: (value) {
        setState(() {
          if (value.isNotEmpty && error.contains(kPasswordNullError)) {
            error.remove(kPasswordNullError);
          } else if (value.length > 8 && error.contains(kShortPasswordError)) {
            setState(() {
              error.remove(kShortPasswordError);
            });
          }
          password = value;
        });
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
        labelText: "Mot de pass",
        hintText: "Entrer votre mot de pass",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SvgPicture.asset("assets/icons/Lock.svg"),
        ),
      ),
    );
  }

  TextFormField builConfirmPassword() {
    return TextFormField(
      keyboardType: TextInputType.text,
      obscureText: true,
      onSaved: (value) => confirmPassword != value,
      onChanged: (value) {
        setState(() {
          if (value.isNotEmpty) {
            error.remove(kPasswordNullError);
          } else if (password == confirmPassword) {
            setState(() {
              error.remove(kPasswordsError);
            });
          }
        });
      },
      validator: (value) {
        if (value!.isEmpty) {
          setState(() {
            error.add(kPasswordNullError);
          });
          return '';
        } else if (password != value) {
          setState(() {
            error.add(kPasswordsError);
          });
          return '';
        }

        return null;
      },
      decoration: InputDecoration(
        labelText: "Confirme Mot de passe",
        hintText: "Re-entrer votre mot de passe",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SvgPicture.asset("assets/icons/Lock.svg"),
        ),
      ),
    );
  }

  TextFormField buildEmail() {
    return TextFormField(
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
          child: SvgPicture.asset("assets/icons/Mail.svg"),
        ),
      ),
    );
  }
}
