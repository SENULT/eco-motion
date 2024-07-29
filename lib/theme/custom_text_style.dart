import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeCustomDeeppurple900 =>
      theme.textTheme.bodyLarge!.custom.copyWith(
        color: appTheme.deepPurple900,
      );
  static get bodyLargeCustomWhiteA700 =>
      theme.textTheme.bodyLarge!.custom.copyWith(
        color: appTheme.whiteA700,
      );
  static get bodyLargeGray900 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray900.withOpacity(0.72),
      );
  static get bodyLargeGray900_1 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray900.withOpacity(0.39),
      );
  static get bodyLargeGray900_2 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray900.withOpacity(0.54),
      );
  static get bodyLargeGray900_3 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray900,
      );
  static get bodyLargeOnPrimary => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
      );
  static get bodyLargeSFProTextGray900 =>
      theme.textTheme.bodyLarge!.sFProText.copyWith(
        color: appTheme.gray900.withOpacity(0.72),
        fontSize: 17.fSize,
      );
  static get bodyLargeWhiteA700 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.whiteA700,
      );
  static get bodyLarge_1 => theme.textTheme.bodyLarge!;
  static get bodyLarge_2 => theme.textTheme.bodyLarge!;
  static get bodyMediumBlack900 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black900.withOpacity(0.72),
      );
  static get bodyMediumBluegray300 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray300,
      );
  static get bodyMediumCustomAmberA400 =>
      theme.textTheme.bodyMedium!.custom.copyWith(
        color: appTheme.amberA400,
        fontSize: 15.fSize,
      );
  static get bodyMediumCustomBlack900 =>
      theme.textTheme.bodyMedium!.custom.copyWith(
        color: appTheme.black900,
        fontSize: 15.fSize,
      );
  static get bodyMediumDeeporange300 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.deepOrange300,
      );
  static get bodyMediumEpilogueGray900 =>
      theme.textTheme.bodyMedium!.epilogue.copyWith(
        color: appTheme.gray900,
      );
  static get bodyMediumGray900 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray900.withOpacity(0.72),
      );
  static get bodyMediumGray900_1 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray900,
      );
  static get bodyMediumOnPrimary => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
      );
  static get bodyMediumPrimary => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get bodyMediumSFProTextBlack900 =>
      theme.textTheme.bodyMedium!.sFProText.copyWith(
        color: appTheme.black900.withOpacity(0.64),
        fontSize: 13.fSize,
      );
  static get bodyMediumSFProTextBlack90013 =>
      theme.textTheme.bodyMedium!.sFProText.copyWith(
        color: appTheme.black900.withOpacity(0.56),
        fontSize: 13.fSize,
      );
  static get bodyMediumSFProTextBlack90013_1 =>
      theme.textTheme.bodyMedium!.sFProText.copyWith(
        color: appTheme.black900,
        fontSize: 13.fSize,
      );
  static get bodyMedium_1 => theme.textTheme.bodyMedium!;
  static get bodyMediumff1882ff => theme.textTheme.bodyMedium!.copyWith(
        color: Color(0XFF1882FF),
      );
  static get bodyMediumff6b7280 => theme.textTheme.bodyMedium!.copyWith(
        color: Color(0XFF6B7280),
      );
  static get bodySmall10 => theme.textTheme.bodySmall!.copyWith(
        fontSize: 10.fSize,
      );
  static get bodySmall10_1 => theme.textTheme.bodySmall!.copyWith(
        fontSize: 10.fSize,
      );
  static get bodySmall10_2 => theme.textTheme.bodySmall!.copyWith(
        fontSize: 10.fSize,
      );
  static get bodySmall12 => theme.textTheme.bodySmall!.copyWith(
        fontSize: 12.fSize,
      );
  static get bodySmall12_1 => theme.textTheme.bodySmall!.copyWith(
        fontSize: 12.fSize,
      );
  static get bodySmallBlack900 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.black900.withOpacity(0.4),
      );
  static get bodySmallBlack90010 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.black900.withOpacity(0.96),
        fontSize: 10.fSize,
      );
  static get bodySmallBlack90010_1 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.black900.withOpacity(0.64),
        fontSize: 10.fSize,
      );
  static get bodySmallBlack90010_2 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.black900.withOpacity(0.4),
        fontSize: 10.fSize,
      );
  static get bodySmallBlack90012 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.black900.withOpacity(0.96),
        fontSize: 12.fSize,
      );
  static get bodySmallBlue700 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blue700,
        fontSize: 10.fSize,
      );
  static get bodySmallCustomBlack900 =>
      theme.textTheme.bodySmall!.custom.copyWith(
        color: appTheme.black900,
        fontSize: 12.fSize,
      );
  static get bodySmallGray800 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray800,
        fontSize: 10.fSize,
      );
  static get bodySmallGray900 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray900.withOpacity(0.72),
        fontSize: 12.fSize,
      );
  static get bodySmallIndigoA20001 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.indigoA20001,
        fontSize: 10.fSize,
      );
  static get bodySmallPrimary => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 10.fSize,
      );
  static get bodySmallPrimary10 => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 10.fSize,
      );
  static get bodySmallRoboto => theme.textTheme.bodySmall!.roboto.copyWith(
        fontWeight: FontWeight.w300,
      );
  static get bodySmallRoboto10 => theme.textTheme.bodySmall!.roboto.copyWith(
        fontSize: 10.fSize,
      );
  static get bodySmallRobotoLight => theme.textTheme.bodySmall!.roboto.copyWith(
        fontSize: 10.fSize,
        fontWeight: FontWeight.w300,
      );
  static get bodySmallSecondaryContainer => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.secondaryContainer,
        fontSize: 10.fSize,
      );
  static get bodySmallWhiteA700 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.whiteA700,
      );
  static get bodySmallWhiteA70010 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.whiteA700,
        fontSize: 10.fSize,
      );
  static get bodySmallWhiteA700_1 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.whiteA700,
      );
  static get bodySmallb7000000 => theme.textTheme.bodySmall!.copyWith(
        color: Color(0XB7000000),
        fontSize: 10.fSize,
      );
  // Headline style
  static get headlineSmall_1 => theme.textTheme.headlineSmall!;
  // S text style
  static get sFProDisplayWhiteA700 => TextStyle(
        color: appTheme.whiteA700,
        fontSize: 83.fSize,
        fontWeight: FontWeight.w200,
      ).sFProDisplay;
  // Title text style
  static get titleLargeCustomBlack900 =>
      theme.textTheme.titleLarge!.custom.copyWith(
        color: appTheme.black900.withOpacity(0.53),
      );
  static get titleLargeOnPrimary => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
      );
  static get titleLargeWhiteA700 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.whiteA700,
        fontSize: 22.fSize,
      );
  static get titleLarge_1 => theme.textTheme.titleLarge!;
  static get titleMediumOutfitPrimary =>
      theme.textTheme.titleMedium!.outfit.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumSFProTextPrimary =>
      theme.textTheme.titleMedium!.sFProText.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 17.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumSFProTextWhiteA700 =>
      theme.textTheme.titleMedium!.sFProText.copyWith(
        color: appTheme.whiteA700,
        fontSize: 17.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallRobotoGreenA70001 =>
      theme.textTheme.titleSmall!.roboto.copyWith(
        color: appTheme.greenA70001,
        fontSize: 14.fSize,
        fontWeight: FontWeight.w700,
      );
}

extension on TextStyle {
  TextStyle get outfit {
    return copyWith(
      fontFamily: 'Outfit',
    );
  }

  TextStyle get epilogue {
    return copyWith(
      fontFamily: 'Epilogue',
    );
  }

  TextStyle get roboto {
    return copyWith(
      fontFamily: 'Roboto',
    );
  }

  TextStyle get sFProDisplay {
    return copyWith(
      fontFamily: 'SF Pro Display',
    );
  }

  TextStyle get sFProText {
    return copyWith(
      fontFamily: 'SF Pro Text',
    );
  }

  TextStyle get custom {
    return copyWith(
      fontFamily: '?????',
    );
  }

}
