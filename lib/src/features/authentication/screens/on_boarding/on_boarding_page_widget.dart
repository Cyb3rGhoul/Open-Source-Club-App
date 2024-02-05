import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:osc/src/constants/colors.dart';
import 'package:osc/src/features/authentication/models/model_on_boarding.dart';

class OnBoardingPageWidget extends StatelessWidget {
  const OnBoardingPageWidget({
    super.key,
    required this.model,
  });

  final OnBoardingModel model;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      color: model.bgColor,
      child: Padding(
        padding: const EdgeInsets.only(left: 10.0, right: 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image(
              image: AssetImage(model.image),
              height: size.height * 0.35,
            ),
            Column(
              children: [
                Text(
                  model.title,
                  style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                        color: oBlackColor,
                        fontWeight: FontWeight.bold,
                        fontFamily: GoogleFonts.poppins().fontFamily,
                      ),
                ),
                Text(
                  model.subTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: oBlackColor,
                    fontFamily: GoogleFonts.montserrat().fontFamily,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Text(
              model.counterText,
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    color: oBlackColor,
                    fontWeight: FontWeight.bold,
                    fontFamily: GoogleFonts.poppins().fontFamily,
                  ),
            ),
            const SizedBox(
              height: 50.0,
            )
          ],
        ),
      ),
    );
  }
}
