import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:osc/src/features/authentication/screens/splash_screen/splash_screen.dart';
import 'package:osc/src/utils/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: OSCAppTheme.lightTheme,
      darkTheme: OSCAppTheme.darkTheme,
      themeMode: ThemeMode.system,
      home: SplashScreen(),
    );
  }
}
