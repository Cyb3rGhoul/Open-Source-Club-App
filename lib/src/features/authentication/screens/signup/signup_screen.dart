import 'package:flutter/material.dart';
import 'package:osc/src/common_widgets/form/form_header_widget.dart';
import 'package:osc/src/constants/colors.dart';
import 'package:osc/src/constants/images_strings.dart';
import 'package:osc/src/constants/sizes.dart';
import 'package:osc/src/constants/text_strings.dart';
import 'package:osc/src/features/authentication/screens/signup/widgets/sign_up_footer.dart';
import 'package:osc/src/features/authentication/screens/signup/widgets/sign_up_form_widget.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(oDefaultSize),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FormHeaderWidget(
                    image: oWelcomeImage,
                    title: oSignUpTitle,
                    subTitle: oSignUpSubTitle,
                    size: size),
                const SignUpFormWidget(),
                const SignUpFooterWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
