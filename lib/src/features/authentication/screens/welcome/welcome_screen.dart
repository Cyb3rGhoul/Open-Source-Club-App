import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);
  static const String routeName = '/welcome';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
        child: Text('Welcome Screen'),
      ),
    );
  }
}
