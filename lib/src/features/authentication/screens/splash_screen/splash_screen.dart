import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:osc/src/common_widgets/fade_in_animation/animation_design.dart';
import 'package:osc/src/common_widgets/fade_in_animation/animation_model.dart';
import 'package:osc/src/common_widgets/fade_in_animation/fade_in_animation_controller.dart';
import 'package:osc/src/constants/colors.dart';
import 'package:osc/src/constants/images_strings.dart';
import 'package:osc/src/constants/sizes.dart';
import 'package:osc/src/constants/text_strings.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(FadeInAnimationController());
    controller.startSplashAnimation();
    return Scaffold(
      body: Stack(
        children: [
          OFadeInAnimation(
            durationInMs: 1600,
            animate: OAnimatePosition(
              topAfter: -20,
              topBefore: -80,
              leftAfter: -20,
              leftBefore: -80,
            ),
            child: Image(image: AssetImage(oSplashTopIcon)),
          ),
          OFadeInAnimation(
            durationInMs: 2000,
            animate: OAnimatePosition(
                topBefore: 100,
                topAfter: 100,
                leftAfter: oDefaultSize,
                leftBefore: -80),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                oAppName,
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      fontFamily: GoogleFonts.poppins().fontFamily,
                    ),
              ),
              Text(
                oAppTagLine,
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                        ) ??
                    const TextStyle(fontWeight: FontWeight.bold),
              ),
            ]),
          ),
          OFadeInAnimation(
              durationInMs: 1600,
              animate: OAnimatePosition(
                  bottomAfter: 200,
                  bottomBefore: 0,
                  leftAfter: 20,
                  leftBefore: 20),
              child: const Image(image: AssetImage(oSplashImage))),
          OFadeInAnimation(
            durationInMs: 1600,
            animate: OAnimatePosition(
                bottomAfter: 40,
                bottomBefore: 0,
                rightAfter: oDefaultSize,
                rightBefore: oDefaultSize),
            child: Container(
              width: oSplashContainerSize,
              height: oSplashContainerSize,
              decoration: BoxDecoration(
                color: oPrimaryColor,
                borderRadius: BorderRadius.circular(100),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
