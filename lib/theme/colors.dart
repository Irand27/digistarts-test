import 'package:flutter/material.dart';

class ThemeColors {
  static Color paper(BuildContext context) {
    return Theme.of(context).cardColor;
  }

  static Color black(BuildContext context) {
    return Colors.grey[800];
  }

  static Color scaffoldBackground(BuildContext context) {
    return Colors.grey[300];
  }

  static Color accent(BuildContext context) {
    return Theme.of(context).accentColor;
  }
}
