import 'package:flutter/material.dart';
import 'package:osc/src/utils/theme/widget_themes/elevated_button_theme.dart';
import 'package:osc/src/utils/theme/widget_themes/oulined_button_theme.dart';
import 'package:osc/src/utils/theme/widget_themes/text_field_theme.dart';
import 'package:osc/src/utils/theme/widget_themes/text_theme.dart';

class OSCAppTheme {

  OSCAppTheme._();
  static ThemeData lightTheme = ThemeData(
      brightness: Brightness.light, 
      textTheme: OSCTextTheme.lightTextTheme,
      outlinedButtonTheme: OOulinedButtonTheme.lightOulinedButtonTheme,
      elevatedButtonTheme: OElevatedButtonTheme.lightElevatedButtonTheme,
      inputDecorationTheme: OTextFormFieldTheme.lightInputDecorationTheme,
      );
  static ThemeData darkTheme = ThemeData(
      brightness: Brightness.dark, 
      textTheme: OSCTextTheme.darkTextTheme,
      outlinedButtonTheme: OOulinedButtonTheme.darkOulinedButtonTheme,
      elevatedButtonTheme: OElevatedButtonTheme.darkElevatedButtonTheme,
      inputDecorationTheme: OTextFormFieldTheme.darkInputDecorationTheme,
  );
}
