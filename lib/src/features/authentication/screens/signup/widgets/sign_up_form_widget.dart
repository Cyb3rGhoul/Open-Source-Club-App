import 'package:flutter/material.dart';
import 'package:osc/src/constants/sizes.dart';
import 'package:osc/src/constants/text_strings.dart';

class SignUpFormWidget extends StatelessWidget {
  const SignUpFormWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(vertical: oFormHeight - 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              style: TextStyle(fontSize: 13),
              decoration: const InputDecoration(
                label: Text("Full Name"),
                prefixIcon: const Icon(Icons.person),
              ),
            ),
            const SizedBox(height: oFormHeight - 20),
            TextFormField(
              style: TextStyle(fontSize: 13),
              decoration: const InputDecoration(
                label: Text("Email"),
                prefixIcon: const Icon(Icons.email),
              ),
            ),
            const SizedBox(height: oFormHeight - 20),
            TextFormField(
              style: TextStyle(fontSize: 13),
              decoration: const InputDecoration(
                label: Text("Phone Number"),
                prefixIcon: const Icon(Icons.phone_android),
              ),
            ),
            const SizedBox(height: oFormHeight - 20),
            TextFormField(
              style: TextStyle(fontSize: 13),
              decoration: const InputDecoration(
                label: Text("Password"),
                prefixIcon: const Icon(Icons.fingerprint_outlined),
              ),
            ),
            const SizedBox(height: oFormHeight - 10),
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {}, child: Text(oSignUp.toUpperCase()))),
          ],
        ));
  }
}
