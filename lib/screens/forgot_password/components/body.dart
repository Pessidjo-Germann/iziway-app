import 'package:e_commerce/screens/sing_in/components/body.dart';
import 'package:e_commerce/screens/sing_in/components/form_error.dart';
import 'package:e_commerce/size_configuration.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constant.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenHeight(20)),
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeigth! * 0.1),
              Text(
                "Mot de pass oublie",
                style: TextStyle(
                  fontSize: getProportionateScreenWidth(28),
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                "S'il vous plait entrer votre adresse mail et on vous\n enverra un lien pour retrouver votre compte",
                textAlign: TextAlign.center,
              ),
              SizedBox(height: SizeConfig.screenHeigth! * 0.1),
              const ForgotPasswordForm(),
            ],
          ),
        ),
      ),
    );
  }
}

class ForgotPasswordForm extends StatefulWidget {
  const ForgotPasswordForm({super.key});

  @override
  State<ForgotPasswordForm> createState() => _ForgotPasswordFormState();
}

class _ForgotPasswordFormState extends State<ForgotPasswordForm> {
  final List<String> error = [];
  String email = '';
  final _keyForm = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _keyForm,
      child: Column(
        children: [
          TextFormField(
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
              setState(() {
                if (value!.isEmpty && !error.contains(kEmailNullError)) {
                  error.add(kEmailNullError);
                } else if (!emailValidator.hasMatch(value) &&
                    !error.contains(kInvalidEmailNullError)) {
                  setState(() {
                    error.add(kInvalidEmailNullError);
                  });
                }
              });
              return '';
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
          ),
          SizedBox(height: getProportionateScreenHeight(30)),
          FormError(error: error),
          SizedBox(height: SizeConfig.screenHeigth! * 0.1),
          defaultBouton("Continue", () {
            if (_keyForm.currentState!.validate()) {
              //dirider vers quel que part
            }
          }),
          SizedBox(height: SizeConfig.screenHeigth! * 0.1),
          const NoAccount()
        ],
      ),
    );
  }
}
