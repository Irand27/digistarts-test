import 'package:flutter/material.dart';

class ThemeColors {
  static Color paper(BuildContext context) {
    return Theme.of(context).cardColor;
  }

  static Color black(BuildContext context) {
    return Theme.of(context).colorScheme.background;
  }

  static Color scaffoldBackground(BuildContext context) {
    return Theme.of(context).scaffoldBackgroundColor;
  }

  static Color accent(BuildContext context) {
    return Theme.of(context).accentColor;
  }
}
