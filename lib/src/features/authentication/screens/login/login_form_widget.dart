import 'package:flutter/material.dart';
import 'package:osc/src/constants/sizes.dart';
import 'package:osc/src/constants/text_strings.dart';
import 'package:osc/src/features/authentication/screens/forget_password/forget_password_option/forget_password_bottom_sheet.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Container(
      padding: const EdgeInsets.symmetric(vertical: oFormHeight - 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            style: TextStyle(fontSize: 13),
            decoration: InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                prefixIcon: const Icon(Icons.person_outlined),
                labelText: "Email ID",
                hintText: "Enter your email ID",
                border: OutlineInputBorder()),
          ),
          SizedBox(height: oFormHeight - 20),
          TextFormField(
            style: TextStyle(fontSize: 13),
            decoration: InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                prefixIcon: const Icon(Icons.fingerprint),
                labelText: "Password",
                hintText: "Enter your Password",
                border: OutlineInputBorder(),
                suffixIcon: IconButton(
                  onPressed: null,
                  icon: Icon(Icons.remove_red_eye_sharp),
                )),
          ),
          SizedBox(height: oFormHeight - 20),
          Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                  onPressed: () {
                    ForgetPasswordScreen.buildShowModalBottomSheet(context);
                  },
                  child: Text(oForgotPassword))),
          const SizedBox(height: oFormHeight - 20),
          SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {}, child: Text(oLogin.toUpperCase()))),
        ],
      ),
    ));
  }
}
