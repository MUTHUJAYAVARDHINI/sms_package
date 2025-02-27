
import 'package:flutter/material.dart';

import 'app_colors.dart';
import 'app_sizes.dart';
import 'boxDecoration.dart';


class AppStyles {
  AppStyles._();

//  static labelSmall(context, {fontSize, color, fontWeight}) {
//     return Theme.of(context)
//         .textTheme
//         .labelSmall
//         ?.copyWith(color: color, fontSize: , fontWeight: fontWeight);
//   }

//  static labelMedium(context, {fontSize, color, fontWeight}) {
//     return Theme.of(context)
//         .textTheme
//         .labelMedium
//         ?.copyWith(color: color, fontSize: fontSize, fontWeight: fontWeight);
//   }

//    static labelLarge(context, {fontSize, color, fontWeight}) {
//     return Theme.of(context)
//         .textTheme
//         .labelLarge
//         ?.copyWith(color: color, fontSize: fontSize, fontWeight: fontWeight);
//   }

//    static bodySmall(context, {fontSize, color, fontWeight}) {
//     return Theme.of(context)
//         .textTheme
//         .bodySmall
//         ?.copyWith(color: color, fontSize: fontSize, fontWeight: fontWeight);
//   }
//    static bodyMedium(context, {fontSize, color, fontWeight}) {
//     return Theme.of(context)
//         .textTheme
//         .bodyMedium
//         ?.copyWith(color: color, fontSize: fontSize, fontWeight: fontWeight);
//   }

//    static bodyLarge(context, {fontSize, color, fontWeight}) {
//     return Theme.of(context)
//         .textTheme
//         .bodyLarge
//         ?.copyWith(color: color, fontSize: fontSize, fontWeight: fontWeight);
//   }

//    static titleSmall(context, {fontSize, color, fontWeight}) {
//     return Theme.of(context)
//         .textTheme
//         .titleSmall
//         ?.copyWith(color: color, fontSize: fontSize, fontWeight: fontWeight);
//   }
//   static titleMedium(context, {fontSize, color, fontWeight}) {
//     return Theme.of(context)
//         .textTheme
//         .titleMedium
//         ?.copyWith(color: color, fontSize: fontSize, fontWeight: fontWeight);
//   }
//    static titleLarge(context, {fontSize, color, fontWeight}) {
//     return Theme.of(context)
//         .textTheme
//         .titleLarge
//         ?.copyWith(color: color, fontSize: fontSize, fontWeight: fontWeight);
//   }
//   static headlineSmall(context, {fontSize, color, fontWeight}) {
//     return Theme.of(context)
//         .textTheme
//         .headlineSmall
//         ?.copyWith(color: color, fontSize: fontSize, fontWeight: fontWeight);
//   }

//    static headlineMedium(context, {fontSize, color, fontWeight}) {
//     return Theme.of(context)
//         .textTheme
//         .headlineMedium
//         ?.copyWith(color: color, fontSize: fontSize, fontWeight: fontWeight);
//   }

//   static headlineLarge(context, {fontSize, color, fontWeight}) {
//     return Theme.of(context)
//         .textTheme
//         .headlineLarge
//         ?.copyWith(color: color, fontSize: fontSize, fontWeight: fontWeight);
//   }

  static paddingAll({double? value}) {
    return EdgeInsets.all(value ?? AppSizes.size_24);
  }

  static paddingHorizantal({double? value}) {
    return EdgeInsets.symmetric(horizontal: value ?? AppSizes.size_24);
  }

  static paddingVertical({double? value}) {
    return EdgeInsets.symmetric(vertical: value ?? AppSizes.size_24);
  }

  static paddingOnly({double? left, right, top, bottom}) {
    return EdgeInsets.only(
        left: left ?? 0, right: right ?? 0, top: top ?? 0, bottom: bottom ?? 0);
  }

  static paddingHorVert({double? horizontal,vertical}) {
    return EdgeInsets.symmetric(vertical: vertical ?? AppSizes.size_24,horizontal: horizontal??AppSizes.size_24);
  }


  static hGapSmall({double? value}) {
    return SizedBox(
      width: value ?? AppSizes.size_12,
    );
  }

  static hGapMedium({double? value}) {
    return SizedBox(
      width: value ?? AppSizes.size_16,
    );
  }

  static hGapLarge({double? value}) {
    return SizedBox(
      width: value ?? AppSizes.size_24,
    );
  }

  static hGapXLarge({double? value}) {
    return SizedBox(
      width: value ?? AppSizes.size_48,
    );
  }

  static vGapSmall({double? value}) {
    return SizedBox(
      height: value ?? AppSizes.size_12,
    );
  }

  static vGapMedium({double? value}) {
    return SizedBox(
      height: value ?? AppSizes.size_16,
    );
  }

  static vGapLarge({double? value}) {
    return SizedBox(
      height: value ?? AppSizes.size_24,
    );
  }

  static vGapXLarge({double? value}) {
    return SizedBox(
      height: value ?? AppSizes.size_48,
    );
  }

  static shapeCard({double? radius}) {
    return WidgetStatePropertyAll(RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(radius ?? 3.0)));
  }

  static appBarFlexibleSpace() {
    return Container(
        decoration:
            BoxDecorations.buildGradientBoxDecorationOne(radius: 0, decColor: [
      AppColors.gradientOne,
      AppColors.gradientTwo,
    ], stops: [
      0.3,
      2.9
    ]));
  }
  
}
