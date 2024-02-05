import 'package:flutter/material.dart';
import 'package:osc/src/constants/colors.dart';
import 'package:osc/src/constants/sizes.dart';

class OElevatedButtonTheme {

  OElevatedButtonTheme._();

  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      shape: RoundedRectangleBorder(),
      foregroundColor: oWhiteColor,
      backgroundColor: oSecondaryColor,
      padding: EdgeInsets.symmetric(vertical: oButtonHeight),
    ),
  );

  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      shape: RoundedRectangleBorder(),
      foregroundColor: oSecondaryColor,
      backgroundColor: oPrimaryColor,
      padding: EdgeInsets.symmetric(vertical: oButtonHeight),
    ),
  );
}