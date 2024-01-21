import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeDeeppurple500 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.deepPurple500,
        fontSize: 18.fSize,
      );
  static get bodyLargeff000000 => theme.textTheme.bodyLarge!.copyWith(
        color: Color(0XFF000000),
      );
  // Headline text style
  static get headlineLargeDeeppurple500 =>
      theme.textTheme.headlineLarge!.copyWith(
        color: appTheme.deepPurple500,
        fontSize: 30.fSize,
        fontWeight: FontWeight.w400,
      );
  static get headlineLargeSemiBold => theme.textTheme.headlineLarge!.copyWith(
        fontWeight: FontWeight.w600,
      );
  // Title text style
  static get titleMediumIstokWebGreen900 =>
      theme.textTheme.titleMedium!.istokWeb.copyWith(
        color: appTheme.green900,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumWhiteA700 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.whiteA700,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w600,
      );
}

extension on TextStyle {
  TextStyle get istokWeb {
    return copyWith(
      fontFamily: 'Istok Web',
    );
  }

  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }
}
