import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:osc/src/constants/sizes.dart';
import 'package:osc/src/constants/text_strings.dart';
import 'package:osc/src/features/authentication/screens/forget_password/forget_password_email/forget_password_mail_select.dart';
import 'package:osc/src/features/authentication/screens/forget_password/forget_password_option/bottom_sheet_button.dart';

class ForgetPasswordScreen {
  static Future<dynamic> buildShowModalBottomSheet(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      builder: (context) => Container(
        padding: const EdgeInsets.all(oDefaultSize),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           Text(
              oForgetPasswordTitle,
              style: Theme.of(context).textTheme.bodyLarge?.copyWith( fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text(
              oForgotPasswordSubTitle,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(height: oDefaultSize - 10),
            ForgetPasswordBtnWidget(
              onTap: () {
                Navigator.pop(context);
                Get.to(() => const ForgetPasswordMailScreen());
              },
              title: "Email ID",
              subTitle: "Reset via Email ID",
              btnIcon: Icons.mail_outline_rounded,
            ),
            const SizedBox(height: 20.0),
            ForgetPasswordBtnWidget(
              onTap: () {},
              title: "Number",
              subTitle: "Reset via Phone Number",
              btnIcon: Icons.mobile_friendly_rounded,
            ),
          ],
        ),
      ),
    );
  }
}
