import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:osc/src/common_widgets/form/form_header_widget.dart';
import 'package:osc/src/constants/images_strings.dart';
import 'package:osc/src/constants/sizes.dart';
import 'package:osc/src/constants/text_strings.dart';
import 'package:osc/src/features/authentication/screens/login/login_footer_screen.dart';
import 'package:osc/src/features/authentication/screens/login/login_form_widget.dart';
import 'package:osc/src/features/authentication/screens/login/login_header_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

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
                  title: oLoginTitle,
                  subTitle: oLoginSubTitle,
                  size: size),
              const LoginForm(),
              const LoginFooterWidget(),
            ],
          ),
        )),
      ),
    );
  }
}
