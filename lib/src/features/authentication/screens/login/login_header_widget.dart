import 'package:flutter/material.dart';
import 'package:osc/src/constants/images_strings.dart';
import 'package:osc/src/constants/text_strings.dart';

class LoginHeaderWidget extends StatelessWidget {
  const LoginHeaderWidget({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          image: AssetImage(oWelcomeImage),
          height: size.height * 0.2,
        ),
        Text(
          oLoginTitle,
          style: const TextStyle(
              fontFamily: 'poppins', fontSize: 24, fontWeight: FontWeight.bold),
        ),
        Text(
          oLoginSubTitle,
          style: const TextStyle(
              fontFamily: 'poppins',
              fontSize: 16,
              fontWeight: FontWeight.normal),
        ),
      ],
    );
  }
}
