import 'package:flutter/material.dart';
import 'package:turismapp/core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillPrimary => BoxDecoration(
        color: theme.colorScheme.primary,
      );
  static BoxDecoration get fillPrimary1 => BoxDecoration(
        color: theme.colorScheme.primary.withOpacity(0.1),
      );
  static BoxDecoration get fillWhiteA => BoxDecoration(
        color: appTheme.whiteA700,
      );

  // Outline decorations
  static BoxDecoration get outlineBlueGray => BoxDecoration(
        color: appTheme.whiteA700,
        border: Border(
          top: BorderSide(
            color: appTheme.blueGray100,
            width: getHorizontalSize(1),
          ),
        ),
      );
  static BoxDecoration get outlineGray => BoxDecoration(
        color: appTheme.whiteA700,
        border: Border.all(
          color: appTheme.gray200,
          width: getHorizontalSize(1),
        ),
      );
  static BoxDecoration get outlineOnPrimary => BoxDecoration(
        color: appTheme.gray100,
        border: Border.all(
          color: theme.colorScheme.onPrimary,
          width: getHorizontalSize(3),
        ),
      );
  static BoxDecoration get outlineOnPrimaryContainer => BoxDecoration(
        color: appTheme.yellowA700,
        border: Border.all(
          color: theme.colorScheme.onPrimaryContainer,
          width: getHorizontalSize(1),
        ),
      );
  static BoxDecoration get outlineOnPrimary1 => BoxDecoration(
        color: appTheme.whiteA700,
        border: Border.all(
          color: theme.colorScheme.onPrimary,
          width: getHorizontalSize(3),
        ),
      );
  static BoxDecoration get outlineOnPrimary2 => BoxDecoration(
        color: theme.colorScheme.primary,
        border: Border.all(
          color: theme.colorScheme.onPrimary,
          width: getHorizontalSize(3),
        ),
      );
  static BoxDecoration get outlineOnPrimary3 => BoxDecoration(
        color: appTheme.yellow90099,
        border: Border.all(
          color: theme.colorScheme.onPrimary,
          width: getHorizontalSize(3),
        ),
      );
  static BoxDecoration get outlinePrimary => BoxDecoration(
        color: appTheme.whiteA700,
        border: Border.all(
          color: theme.colorScheme.primary,
          width: getHorizontalSize(1),
        ),
      );
  static BoxDecoration get outlinePrimary1 => BoxDecoration(
        border: Border.all(
          color: theme.colorScheme.primary,
          width: getHorizontalSize(1),
        ),
      );
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder20 => BorderRadius.circular(
        getHorizontalSize(20),
      );
  static BorderRadius get circleBorder23 => BorderRadius.circular(
        getHorizontalSize(23),
      );
  static BorderRadius get circleBorder26 => BorderRadius.circular(
        getHorizontalSize(26),
      );
  static BorderRadius get circleBorder7 => BorderRadius.circular(
        getHorizontalSize(7),
      );

  // Rounded borders
  static BorderRadius get roundedBorder12 => BorderRadius.circular(
        getHorizontalSize(12),
      );
  static BorderRadius get roundedBorder15 => BorderRadius.circular(
        getHorizontalSize(15),
      );
  static BorderRadius get roundedBorder3 => BorderRadius.circular(
        getHorizontalSize(3),
      );
}

// Comment/Uncomment the below code based on your Flutter SDK version.

// For Flutter SDK Version 3.7.2 or greater.

double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
