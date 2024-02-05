import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:osc/src/constants/colors.dart';
import 'package:osc/src/constants/images_strings.dart';
import 'package:osc/src/constants/text_strings.dart';
import 'package:osc/src/features/authentication/controllers/on_boarding_controller.dart';
import 'package:osc/src/features/authentication/models/model_on_boarding.dart';
import 'package:osc/src/features/authentication/screens/on_boarding/on_boarding_page_widget.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatelessWidget {
  OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    final obController = OnBoardingController();
    
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          LiquidSwipe(
            pages: obController.pages,
            liquidController: obController.controller,
            onPageChangeCallback: obController.onPageChangeCallback,
            slideIconWidget: Icon(Icons.arrow_back_ios_new_outlined),
            enableSideReveal: true,
          ),
          Positioned(
            bottom: 60.0,
            child: OutlinedButton(
              onPressed: () => obController.animateToNextSlide(),
              style: ElevatedButton.styleFrom(
                side: const BorderSide(
                  color: Colors.black,
                ),
                shape: const StadiumBorder(),
                padding: const EdgeInsets.all(20),
                disabledForegroundColor: Colors.white,
              ),
              child: Container(
                  padding: const EdgeInsets.all(20),
                  decoration: const BoxDecoration(
                      color: oSecondaryColor, shape: BoxShape.circle),
                  child: Icon(Icons.arrow_forward_ios)),
            ),
          ),
          Positioned(
            top: 50,
            right: 20,
            child: TextButton(
              onPressed: () => obController.skip(),
              child: const Text(
                "Skip",
                style: TextStyle(
                  color: Color.fromARGB(255, 58, 58, 58),
                  fontSize: 16,
                ),
              ),
            ),
          ),
          Obx(
            () => Positioned(
                bottom: 10,
                child: AnimatedSmoothIndicator(
                  activeIndex: obController.currentPage.value,
                  count: 3,
                  effect: const WormEffect(
                    activeDotColor: Color.fromARGB(255, 0, 23, 65),
                    dotHeight: 5.0,
                  ),
                )),
          )
        ],
      ),
    );
  }
}
