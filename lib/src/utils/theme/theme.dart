import 'package:flutter/material.dart';
import 'package:osc/src/utils/theme/widget_themes/text_theme.dart';

class OSCAppTheme {

  OSCAppTheme._();
  static ThemeData lightTheme = ThemeData(
      brightness: Brightness.light, textTheme: OSCTextTheme.lightTextTheme,
      elevatedButtonTheme : ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom()
      ),
      );
  static ThemeData darkTheme = ThemeData(
      brightness: Brightness.dark, textTheme: OSCTextTheme.darkTextTheme,
      elevatedButtonTheme : ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom()
      ));
}
