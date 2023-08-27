import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeGray70001 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray70001,
      );
  static get bodyLargeGray7000117 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray70001,
        fontSize: getFontSize(
          17,
        ),
      );
  static get bodyMediumGray70001 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray70001,
        fontSize: getFontSize(
          15,
        ),
      );
  static get bodyMediumGray800 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray800,
      );
  static get bodyMediumOnPrimary => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onPrimary,
        fontSize: getFontSize(
          15,
        ),
      );
  static get bodyMediumWhiteA700 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.whiteA700,
        fontSize: getFontSize(
          13,
        ),
      );
  static get bodySmall10 => theme.textTheme.bodySmall!.copyWith(
        fontSize: getFontSize(
          10,
        ),
      );
  static get bodySmall10_1 => theme.textTheme.bodySmall!.copyWith(
        fontSize: getFontSize(
          10,
        ),
      );
  static get bodySmall11 => theme.textTheme.bodySmall!.copyWith(
        fontSize: getFontSize(
          11,
        ),
      );
  static get bodySmallBluegray400 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray400,
        fontSize: getFontSize(
          8,
        ),
      );
  static get bodySmallGray700 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray700,
        fontSize: getFontSize(
          10,
        ),
      );
  static get bodySmallGray70001 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray70001,
        fontSize: getFontSize(
          10,
        ),
      );
  static get bodySmallGray7000111 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray70001,
        fontSize: getFontSize(
          11,
        ),
      );
  static get bodySmallGray70001_1 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray70001,
      );
  static get bodySmallGray70001_2 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray70001,
      );
  static get bodySmallMontserratGray70001 =>
      theme.textTheme.bodySmall!.montserrat.copyWith(
        color: appTheme.gray70001,
        fontSize: getFontSize(
          10,
        ),
      );
  static get bodySmallPrimary => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: getFontSize(
          11,
        ),
      );
  static get bodySmallPrimary_1 => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get bodySmallWhiteA700 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.whiteA700,
        fontSize: getFontSize(
          10,
        ),
      );
  static get bodySmallWhiteA70010 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.whiteA700,
        fontSize: getFontSize(
          10,
        ),
      );
  static get bodySmallWhiteA7009 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.whiteA700,
        fontSize: getFontSize(
          9,
        ),
      );
  // Headline text style
  static get headlineSmallWhiteA700 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w700,
      );
  // Label text style
  static get labelLargeGray700 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray700,
        fontSize: getFontSize(
          12,
        ),
        fontWeight: FontWeight.w700,
      );
  static get labelLargeMontserrat =>
      theme.textTheme.labelLarge!.montserrat.copyWith(
        fontSize: getFontSize(
          12,
        ),
        fontWeight: FontWeight.w500,
      );
  static get labelLargeMontserratGray700 =>
      theme.textTheme.labelLarge!.montserrat.copyWith(
        color: appTheme.gray700,
        fontSize: getFontSize(
          12,
        ),
        fontWeight: FontWeight.w500,
      );
  static get labelLargeMontserratPrimary =>
      theme.textTheme.labelLarge!.montserrat.copyWith(
        color: theme.colorScheme.primary,
        fontSize: getFontSize(
          12,
        ),
        fontWeight: FontWeight.w500,
      );
  static get labelMediumInterGray700 =>
      theme.textTheme.labelMedium!.inter.copyWith(
        color: appTheme.gray700,
        fontWeight: FontWeight.w700,
      );
  static get labelMediumInterGray70001 =>
      theme.textTheme.labelMedium!.inter.copyWith(
        color: appTheme.gray70001,
        fontSize: getFontSize(
          11,
        ),
        fontWeight: FontWeight.w600,
      );
  static get labelMediumInterGray70001Bold =>
      theme.textTheme.labelMedium!.inter.copyWith(
        color: appTheme.gray70001,
        fontWeight: FontWeight.w700,
      );
  static get labelMediumInterWhiteA700 =>
      theme.textTheme.labelMedium!.inter.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w700,
      );
  static get labelMediumPrimary => theme.textTheme.labelMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: getFontSize(
          11,
        ),
      );
  static get labelMediumPrimarySemiBold =>
      theme.textTheme.labelMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: getFontSize(
          11,
        ),
        fontWeight: FontWeight.w600,
      );
  // Montserrat text style
  static get montserratOnPrimary => TextStyle(
        color: theme.colorScheme.onPrimary,
        fontSize: getFontSize(
          3,
        ),
        fontWeight: FontWeight.w400,
      ).montserrat;
  // Title text style
  static get titleLargeBluegray900 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.blueGray900,
      );
  static get titleLargeOnPrimary => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  static get titleMediumBluegray900 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray900,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumBluegray900_1 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray900,
      );
  static get titleMediumBold => theme.textTheme.titleMedium!.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get titleMediumWhiteA700 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.whiteA700,
      );
  static get titleSmallInter => theme.textTheme.titleSmall!.inter.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get titleSmallInterPrimary =>
      theme.textTheme.titleSmall!.inter.copyWith(
        color: theme.colorScheme.primary,
        fontSize: getFontSize(
          15,
        ),
        fontWeight: FontWeight.w700,
      );
  static get titleSmallInterWhiteA700 =>
      theme.textTheme.titleSmall!.inter.copyWith(
        color: appTheme.whiteA700,
        fontSize: getFontSize(
          15,
        ),
        fontWeight: FontWeight.w700,
      );
  static get titleSmallInterWhiteA700SemiBold =>
      theme.textTheme.titleSmall!.inter.copyWith(
        color: appTheme.whiteA700,
        fontSize: getFontSize(
          15,
        ),
        fontWeight: FontWeight.w600,
      );
}

extension on TextStyle {
  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get montserrat {
    return copyWith(
      fontFamily: 'Montserrat',
    );
  }
}
