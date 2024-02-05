import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:osc/src/constants/colors.dart';
import 'package:osc/src/constants/images_strings.dart';
import 'package:osc/src/constants/text_strings.dart';
import 'package:osc/src/features/authentication/models/model_on_boarding.dart';
import 'package:osc/src/features/authentication/screens/on_boarding/on_boarding_page_widget.dart';

class OnBoardingController extends GetxController {
  final controller = LiquidController();
  RxInt currentPage = 0.obs;

  final pages = [
    OnBoardingPageWidget(
      model: OnBoardingModel(
        image: oOnBoardingPage1Image,
        title: oOnBoardingTitle1,
        subTitle: oOnBoardingSubtitle1,
        counterText: oOnBoardingCounter1,
        bgColor: oOnBoardingPage1Color,
      ),
    ),
    OnBoardingPageWidget(
      model: OnBoardingModel(
        image: oOnBoardingPage2Image,
        title: oOnBoardingTitle2,
        subTitle: oOnBoardingSubtitle2,
        counterText: oOnBoardingCounter2,
        bgColor: oOnBoardingPage2Color,
      ),
    ),
    OnBoardingPageWidget(
      model: OnBoardingModel(
        image: oOnBoardingPage3Image,
        title: oOnBoardingTitle3,
        subTitle: oOnBoardingSubtitle3,
        counterText: oOnBoardingCounter3,
        bgColor: oOnBoardingPage3Color,
      ),
    ),
  ];

  onPageChangeCallback(int activePageIndex) {
    currentPage.value = activePageIndex;
  }

  skip() => controller.jumpToPage(page: 2);

  animateToNextSlide() {
        int nextPage = controller.currentPage + 1;
        controller.animateToPage(page: nextPage);
  }

}