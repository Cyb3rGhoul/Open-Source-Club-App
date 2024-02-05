import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:osc/src/constants/sizes.dart';
import 'package:osc/src/constants/text_strings.dart';

class OTPScreen extends StatelessWidget {
  const OTPScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(oDefaultSize),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              oOtpTitle,
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                fontStyle: GoogleFonts.montserrat().fontStyle,
                fontWeight: FontWeight.bold, fontSize: 80.0),
            ),
            Text(
              oOtpTitle1,
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontStyle: GoogleFonts.montserrat().fontStyle,
                  fontWeight: FontWeight.bold,
                  fontSize: 80.0),
            ),
            Text(oOtpSubTitle.toUpperCase(),
                style: Theme.of(context).textTheme.titleLarge),
            const SizedBox(height: 40.0),
            const Text("$oOtpMessage support@opensourcevitb.org",
                textAlign: TextAlign.center),
            const SizedBox(height: 20.0),
            OtpTextField(
                mainAxisAlignment: MainAxisAlignment.center,
                numberOfFields: 6,
                fillColor: Colors.black.withOpacity(0.1),
                filled: true,
                onSubmit: (code) => print("OTP is => $code")),
            const SizedBox(height: 20.0),
            SizedBox(
              width: double.infinity,
              child:
                  ElevatedButton(onPressed: () {}, child: const Text("Next")),
            ),
          ],
        ),
      ),
    );
  }
}
