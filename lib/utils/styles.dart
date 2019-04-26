import 'package:flutter/material.dart';

class AppFontSizes {
  static const smallest = 12.0;
  static const small = 14.0;
  static const medium = 16.0;
  static const _large = 20.0;
  static const larger = 24.0;
  static const _largest = 28.0;
  static const largestc = 28.0;
  static const _sslarge = 18.0;
  static const _sslargest = 22.0;
  static double largest(context) {
    if (smallScreen(context)) {
      return _sslargest;
    }
    return _largest;
  }

  static double large(context) {
    if (smallScreen(context)) {
      return _sslarge;
    }
    return _large;
  }
}

bool smallScreen(BuildContext context) {
  if (MediaQuery.of(context).size.height < 667)
    return true;
  else
    return false;
}

class AppStyles {
  static TextStyle textStyleButtonPrimary(BuildContext context) {
    return TextStyle(
        fontSize: AppFontSizes.large(context),
        fontWeight: FontWeight.w700,
        color: Theme.of(context).backgroundColor);
  }

  static TextStyle textStyleButtonPrimaryOutline(BuildContext context) {
    return TextStyle(
        fontSize: AppFontSizes.large(context),
        fontWeight: FontWeight.w700,
        color: Theme.of(context).primaryColor);
  }
}
