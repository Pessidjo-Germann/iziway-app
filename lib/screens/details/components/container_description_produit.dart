import 'package:flutter/material.dart';

class ContainerProduitDescription extends StatelessWidget {
  ContainerProduitDescription({
    super.key,
    required this.child,
    this.height = 430,
    required this.color,
  });

  final Widget child;
  double height;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: height,
      decoration: BoxDecoration(
        color: color,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      child: child,
    );
  }
}
