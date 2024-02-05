import 'package:flutter/material.dart';
import 'package:osc/src/constants/colors.dart';

class OTextFormFieldTheme {
  OTextFormFieldTheme._();
  static InputDecorationTheme lightInputDecorationTheme =
      const InputDecorationTheme(
    contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 10),    
    border: OutlineInputBorder(),
    labelStyle: TextStyle(color: oSecondaryColor, fontSize: 15),
    prefixIconColor: oSecondaryColor,
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(width: 2.0, color: oSecondaryColor),
    ),
  );

  static InputDecorationTheme darkInputDecorationTheme =
      const InputDecorationTheme(
    contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
    border: OutlineInputBorder(),
    labelStyle: TextStyle(color: oPrimaryColor, fontSize: 15),
    prefixIconColor: oPrimaryColor,
    floatingLabelStyle: TextStyle(color: oPrimaryColor),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(width: 2.0, color: oPrimaryColor),
    ),
  );
}
