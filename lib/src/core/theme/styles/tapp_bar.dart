
import 'package:flutter/material.dart';
import 'package:sms_package/src/constants/app_colors.dart';
import 'package:sms_package/src/constants/app_sizes.dart';


class TAppBarTheme {
  TAppBarTheme._();
  static AppBarTheme lightAppBarTheme = AppBarTheme(
    elevation: 0,
    
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: AppColors.primaryBG,
    surfaceTintColor: Colors.transparent,
    iconTheme: const IconThemeData(
        color: AppColors.colorBlack, size: AppSizes.size_24),
    actionsIconTheme: const IconThemeData(
        color: AppColors.colorBlack, size: AppSizes.size_24),
    titleTextStyle: const TextStyle(
        fontSize: 20.0,
        fontWeight: FontWeight.w600,
        color: AppColors.textPrimary),
  );
  static AppBarTheme darkAppBarTheme = const AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: AppColors.primaryBGDark,
    surfaceTintColor: Colors.transparent,
    iconTheme:
        IconThemeData(color: AppColors.textPrimaryDark, size: AppSizes.size_24),
    actionsIconTheme:
        IconThemeData(color: AppColors.textPrimaryDark, size: AppSizes.size_24),
    titleTextStyle: TextStyle(
        fontSize: 20.0,
        fontWeight: FontWeight.w600,
        color: AppColors.textPrimaryDark),
  );

  static AppBarTheme lightAppBarThemeTab = lightAppBarTheme.copyWith(
      iconTheme: lightAppBarTheme.iconTheme?.copyWith(size: 36),
      titleTextStyle: lightAppBarTheme.titleTextStyle?.copyWith(
        fontSize: 30.0,
      ));

  static AppBarTheme darkAppBarThemeTab = darkAppBarTheme.copyWith(
      iconTheme: darkAppBarTheme.iconTheme?.copyWith(size: 36),
      titleTextStyle: darkAppBarTheme.titleTextStyle?.copyWith(
        fontSize: 30.0,
      ));
}
