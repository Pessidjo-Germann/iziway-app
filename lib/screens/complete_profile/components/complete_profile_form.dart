import 'package:e_commerce/screens/opt/opt_screen.dart';
import 'package:e_commerce/screens/sing_in/components/form_error.dart';
import 'package:flutter/material.dart';

import '../../../constant.dart';
import '../../../size_configuration.dart';

class CompleteProfilForm extends StatefulWidget {
  const CompleteProfilForm({super.key});

  @override
  State<CompleteProfilForm> createState() => _CompleteProfilFormState();
}

class _CompleteProfilFormState extends State<CompleteProfilForm> {
  final _formKey = GlobalKey<FormState>();
  final List<String> error = [];
  String firstName = '';
  String lastName = '';
  String phoneNumber = '';
  String address = '';

  void addError(String eror) {
    if (!error.contains(eror)) {
      setState(() {
        error.add(eror);
      });
    }
  }

  void removeError(String eror) {
    if (error.contains(eror)) {
      setState(() {
        error.remove(eror);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildFirstNameForm(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildLastNameForm(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildPhoneForm(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildAddressForm(),
          SizedBox(height: getProportionateScreenHeight(40)),
          FormError(error: error),
          OutlinedButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                //dirider vers quel que part
                Navigator.pushNamed(context, OptScreen.routeName);
              }
            },
            style: kStyleBtn,
            child: Text(
              "Continuer",
              style: TextStyle(
                  fontSize: getProportionateScreenWidth(18),
                  color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }

  TextFormField buildPhoneForm() {
    return TextFormField(
      keyboardType: TextInputType.number,
      onSaved: (value) => phoneNumber != value,
      onChanged: (value) {
        setState(() {
          if (value.isNotEmpty && error.contains(kPhoneNullError)) {
            error.remove(kPhoneNullError);
          }
        });
      },
      validator: (value) {
        if (value!.isEmpty && !error.contains(kPhoneNullError)) {
          setState(() {
            error.add(kPhoneNullError);
          });
          return '';
        }

        return null;
      },
      decoration: InputDecoration(
        labelText: "Phone number",
        hintText: "Entrer votre numero de telephone",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: Icon(Icons.phone_rounded,
            color: kTextColor, size: getProportionateScreenWidth(24)),
      ),
    );
  }

  TextFormField buildAddressForm() {
    return TextFormField(
      keyboardType: TextInputType.text,
      onSaved: (value) => address != value,
      onChanged: (value) {
        setState(() {
          if (value.isNotEmpty && error.contains(kAddressNullError)) {
            error.remove(kAddressNullError);
          }
        });
      },
      validator: (value) {
        if (value!.isEmpty && !error.contains(kAddressNullError)) {
          setState(() {
            error.add(kAddressNullError);
          });
          return '';
        }

        return null;
      },
      decoration: InputDecoration(
        labelText: "Address",
        hintText: "Entrer votre adresse",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: Icon(Icons.location_on,
            color: kTextColor, size: getProportionateScreenWidth(24)),
      ),
    );
  }

  TextFormField buildFirstNameForm() {
    return TextFormField(
      keyboardType: TextInputType.text,
      onSaved: (value) => firstName != value,
      onChanged: (value) {
        setState(() {
          if (value.isNotEmpty && error.contains(kNameNullError)) {
            error.remove(kNameNullError);
          }
        });
      },
      validator: (value) {
        if (value!.isEmpty && !error.contains(kNameNullError)) {
          setState(() {
            error.add(kNameNullError);
          });
          return '';
        }

        return null;
      },
      decoration: InputDecoration(
        labelText: "First Name",
        hintText: "Entrer votre first name",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: Icon(Icons.person_2,
            color: kTextColor, size: getProportionateScreenWidth(24)),
      ),
    );
  }

  TextFormField buildLastNameForm() {
    return TextFormField(
      keyboardType: TextInputType.text,
      onSaved: (value) => lastName != value,
      onChanged: (value) {
        setState(() {
          if (value.isNotEmpty && error.contains(kNameNullError)) {
            error.remove(kNameNullError);
          }
        });
      },
      validator: (value) {
        if (value!.isEmpty && !error.contains(kNameNullError)) {
          setState(() {
            error.add(kNameNullError);
          });
          return '';
        }

        return null;
      },
      decoration: InputDecoration(
        labelText: "Last Name",
        hintText: "Entrer votre last name",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: Icon(Icons.person_2,
            color: kTextColor, size: getProportionateScreenWidth(24)),
      ),
    );
  }
}
