import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:osc/src/features/authentication/controllers/splash_screen_controller.dart';
import 'package:osc/src/features/authentication/screens/welcome/welcome_screen.dart';
import 'package:osc/src/constants/colors.dart';
import 'package:osc/src/constants/images_strings.dart';
import 'package:osc/src/constants/sizes.dart';
import 'package:osc/src/constants/text_strings.dart';

class SplashScreen extends StatelessWidget {
   SplashScreen({Key? key}) : super(key: key);

  final splashController = Get.put(SplashScreenController());

  @override
  Widget build(BuildContext context) {
    splashController.startAnimation();
    return Scaffold(
      body: Stack(
        children: [
          Obx(
              () => AnimatedPositioned(
                duration: Duration(milliseconds: 500),
                top: splashController.animate.value ? -20 : -80,
                left: splashController.animate.value ? -20 : -80,
                child: Image(image: AssetImage(oSplashTopIcon))),
          ),
          Obx(
              () => AnimatedPositioned(
              duration: const Duration(milliseconds: 500),
              top: 100,
              left: splashController.animate.value ? oDefaultSize : -80,
              child:
                  AnimatedOpacity(
                    duration: const Duration(milliseconds: 1200),
                    opacity: splashController.animate.value ? 1 : 0,
                    child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                                  Text(oAppName, style: Theme.of(context).textTheme.bodyLarge),
                                  Text(
                    oAppTagLine,
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                              fontWeight: FontWeight.bold,
                            ) ??
                        const TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ]),
                  ),
            ),
          ),
          Obx(
            () => AnimatedPositioned(
                duration: const Duration(milliseconds: 800),
                bottom: splashController.animate.value ? 200 : 0,
                left: 20,
                child: Obx(
                  () => AnimatedOpacity(
                    duration: const Duration(milliseconds: 600),
                    opacity: splashController.animate.value ? 1 : 0,
                    child: const Image(image: AssetImage(oSplashImage))),
                )),
          ),
          Obx(
              () => AnimatedPositioned(
                duration: const Duration(milliseconds: 800),
                bottom: splashController.animate.value ? 40 : 0,
                right: oDefaultSize,
                child: Obx(
                  () => AnimatedOpacity(
                    duration: const Duration(milliseconds: 600),
                    opacity: splashController.animate.value ? 1 : 0,
                    child: Container(
                      width: oSplashContainerSize,
                      height: oSplashContainerSize,
                      decoration: BoxDecoration(
                        color: oPrimaryColor,
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ),
                  ),
                )),
          ),
        ],
      ),
    );
  }

  
}
