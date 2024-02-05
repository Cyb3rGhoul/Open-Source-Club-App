import 'package:flutter/material.dart';

class FormHeaderWidget extends StatelessWidget {
  const FormHeaderWidget({
    super.key,
    this.heightBetween,
    this.crossAxisAlignment = CrossAxisAlignment.center,
    this.imageHeight = 0.2,
    this.imageColor,
    required this.image,
    required this.title,
    required this.subTitle,
    required this.size,
    this.textAlign,
  });

  final Size size;

  final String image, title, subTitle;
  final double? heightBetween;
  final CrossAxisAlignment crossAxisAlignment;
  final double imageHeight;
  final Color? imageColor;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image(
          image: AssetImage(image),
          height: size.height * imageHeight,
          color: imageColor,
        ),
        SizedBox(
          height: heightBetween,
        ),
        Text(
          title,
          textAlign: TextAlign.center,
          style: const TextStyle(
              fontFamily: 'poppins', fontSize: 24, fontWeight: FontWeight.bold),
        ),
        Text(
          subTitle,
          textAlign: textAlign,
          style: const TextStyle(
              fontFamily: 'poppins',
              fontSize: 16,
              fontWeight: FontWeight.normal),
        ),
      ],
    );
  }
}
