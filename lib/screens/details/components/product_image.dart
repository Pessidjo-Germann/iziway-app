import 'package:flutter/material.dart';

import '../../../constant.dart';
import '../../../models/product.dart';
import '../../../size_configuration.dart';

class ProductImages extends StatefulWidget {
  const ProductImages({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  State<ProductImages> createState() => _ProductImagesState();
}

class _ProductImagesState extends State<ProductImages> {
  int selectedImage = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: getProportionateScreenWidth(250),
          height: getProportionateScreenHeight(205),
          child: AspectRatio(
            aspectRatio: 1,
            child: Image.asset(widget.product.images[selectedImage]),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ...List.generate(
              widget.product.images.length,
              (index) => buildView(index),
            )
          ],
        )
      ],
    );
  }

  Widget buildView(int index) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: GestureDetector(
        onTap: () {
          setState(() {
            selectedImage = index;
          });
        },
        child: Container(
          padding: EdgeInsets.all(getProportionateScreenWidth(8)),
          width: getProportionateScreenWidth(48),
          height: getProportionateScreenHeight(48),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color:
                  selectedImage == index ? kPrimaryColor : Colors.transparent,
            ),
          ),
          child: Image.asset(widget.product.images[index]),
        ),
      ),
    );
  }
}
