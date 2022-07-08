import 'package:flutter/material.dart';
import 'package:furniture_app/constants.dart';

class ProductPoster extends StatelessWidget {
  const ProductPoster({
    Key? key,
    required this.size,
    required this.image,
  }) : super(key: key);

  final Size size;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: kDefaultPadding),
      height: size.width * 0.6,
      child: Stack(
        children: [
          Container(
            height: size.width * 0.6,
            width: size.width * 0.6,
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
          ),
          Image.asset(
            image,
            height: size.width * 0.65,
            width: size.width * 0.65,
            fit: BoxFit.cover,
          )
        ],
      ),
    );
  }
}
