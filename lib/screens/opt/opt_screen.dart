import 'package:e_commerce/screens/opt/components/body.dart';
import 'package:flutter/material.dart';

class OptScreen extends StatelessWidget {
  static final routeName = '/opt_screen';
  const OptScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text(
          "OPT Verification",
        ),
      ),
      body: Body(),
    ));
  }
}
