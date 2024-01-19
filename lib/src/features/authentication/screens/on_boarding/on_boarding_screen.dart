import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:osc/src/constants/colors.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  static const String routeName = '/on_boarding';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          LiquidSwipe(pages: [
            Container(
              color: oOnBoardingPage1Color,
            ),
            Container(
              color: oOnBoardingPage2Color,
            ),
            Container(
              color: oOnBoardingPage3Color,
            ),
          ])
        ],
      )
    );
  }
}