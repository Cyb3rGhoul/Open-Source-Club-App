import 'package:flutter/material.dart';
import 'package:osc/src/constants/colors.dart';
import 'package:osc/src/constants/sizes.dart';

class OOulinedButtonTheme {
  OOulinedButtonTheme._();

  static final lightOulinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      shape: RoundedRectangleBorder(),
      foregroundColor: oSecondaryColor,
      side: BorderSide(color: oSecondaryColor),
      padding: EdgeInsets.symmetric(vertical: oButtonHeight),
    ),
  );

  static final darkOulinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      shape: RoundedRectangleBorder(),
      foregroundColor: oWhiteColor,
      side: BorderSide(color: oWhiteColor),
      padding: EdgeInsets.symmetric(vertical: oButtonHeight),
    ),
  );
}
