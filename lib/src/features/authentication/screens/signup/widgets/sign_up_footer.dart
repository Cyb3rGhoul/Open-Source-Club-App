import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:osc/src/constants/images_strings.dart';
import 'package:osc/src/constants/sizes.dart';
import 'package:osc/src/constants/text_strings.dart';
import 'package:osc/src/features/authentication/screens/login/login_form_widget.dart';
import 'package:osc/src/features/authentication/screens/signup/signup_screen.dart';

class SignUpFooterWidget extends StatelessWidget {
  const SignUpFooterWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text("OR"),
        const SizedBox(height: oFormHeight - 20),
        SizedBox(
          width: double.infinity,
          child: OutlinedButton.icon(
              icon: Image(
                image: AssetImage(oGoogleIcon),
                height: 20.0,
                width: 20.0,
              ),
              onPressed: () {},
              label: Text(
                oSignInWithGoogle.toUpperCase(),
                style: GoogleFonts.poppins(),
              )),
        ),
        SizedBox(height: oFormHeight - 20),
        TextButton(
            onPressed: () {},
            child: Text.rich(TextSpan(
                text: oAlreadyHaveAnAccount,
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    fontFamily: 'poppins',
                    fontSize: 14.0,
                    fontWeight: FontWeight.normal,),
                children: [
                  TextSpan(
                      text: oLogin.toUpperCase(),
                      style: TextStyle(
                          fontFamily: 'poppins',
                          fontSize: 14.0,
                          color: Colors.blue,
                          fontWeight: FontWeight.bold))
                ]))),
      ],
    );
  }
}
