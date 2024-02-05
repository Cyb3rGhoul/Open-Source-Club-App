import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:osc/src/common_widgets/fade_in_animation/animation_design.dart';
import 'package:osc/src/common_widgets/fade_in_animation/animation_model.dart';
import 'package:osc/src/common_widgets/fade_in_animation/fade_in_animation_controller.dart';
import 'package:osc/src/constants/colors.dart';
import 'package:osc/src/constants/images_strings.dart';
import 'package:osc/src/constants/sizes.dart';
import 'package:osc/src/constants/text_strings.dart';
import 'package:osc/src/features/authentication/screens/login/login_screen.dart';
import 'package:osc/src/features/authentication/screens/signup/signup_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);
  static const String routeName = '/welcome';

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(FadeInAnimationController());
    controller.startAnimation();

    var mediaQuery = MediaQuery.of(context);
    var brightness = mediaQuery.platformBrightness;
    var height = mediaQuery.size.height;
    final isDarkMode = brightness == Brightness.dark;
    return Scaffold(
      backgroundColor: isDarkMode ? oSecondaryColor : oPrimaryColor,
      body: Stack(
        children: [
          OFadeInAnimation(
            durationInMs: 1200,
            animate: OAnimatePosition(
                bottomAfter: 0,
                bottomBefore: -100,
                leftAfter: 0,
                leftBefore: 0,
                rightAfter: 0,
                rightBefore: 0,
                topAfter: 0,
                topBefore: 0),
            child: Container(
              padding: EdgeInsets.all(oDefaultSize),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image(
                      image: AssetImage(oWelcomeImage),
                      height: height * 0.6,
                    ),
                    Column(
                      children: [
                        Text(
                          oWelcomeTitle,
                          style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'poppins'),
                          textAlign: TextAlign.center,
                        ),
                        Text(oWelcomeSubTitle, style: TextStyle(fontSize: 14)),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: OutlinedButton(
                            onPressed: () => Get.to(()=> const LoginScreen()),
                            child: Text(oLogin.toUpperCase()),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () => Get.to(SignUpScreen()),
                            child: Text(oSignUp.toUpperCase()),
                          ),
                        ),
                      ],
                    )
                  ]),
            ),
          )
        ],
      ),
    );
  }
}
