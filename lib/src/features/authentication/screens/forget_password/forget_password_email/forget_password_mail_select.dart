import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:osc/src/common_widgets/form/form_header_widget.dart';
import 'package:osc/src/constants/images_strings.dart';
import 'package:osc/src/constants/sizes.dart';
import 'package:osc/src/constants/text_strings.dart';
import 'package:osc/src/features/authentication/screens/forget_password/forget_password_otp/otp_screen.dart';

class ForgetPasswordMailScreen extends StatelessWidget {
  const ForgetPasswordMailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(oDefaultSize),
            child: Column(
              children: [
                const SizedBox(height: oDefaultSize * 4),
                FormHeaderWidget(
                  image: oForgetPasswordImage,
                  imageColor: Theme.of(context).textTheme.bodyMedium?.color,
                  title: "Give your Email",
                  subTitle: "Enter you Email ID to get OTP",
                  crossAxisAlignment: CrossAxisAlignment.center,
                  heightBetween: 40.0,
                  textAlign: TextAlign.center,
                  size: size,
                ),
                const SizedBox(height: oFormHeight),
                Form(
                  child: Column(
                    children: [
                      TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        style: TextStyle(fontSize: 13.0),
                        decoration: const InputDecoration(
                            label: Text(oEmail),
                            hintText: oEmail,
                            prefixIcon: Icon(Icons.mail_outline_rounded)),
                      ),
                      const SizedBox(height: 20.0),
                      SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                              onPressed: () => Get.to(() => OTPScreen()),
                              child: const Text("Next"))),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
