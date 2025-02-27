
import 'package:flutter/material.dart';
import 'package:sms_package/src/constants/app_sizes.dart';
import 'package:sms_package/src/core/theme/styles/text_theme.dart';


/* -- Light & Dark Elevated Button Themes -- */
class AppTextButtonTheme {
  AppTextButtonTheme._(); //To avoid creating instances

  /* -- Light Theme -- */
  static final lightTextButtonTheme = TextButtonThemeData(
      style: ButtonStyle(
          padding: const WidgetStatePropertyAll(EdgeInsets.symmetric(
              horizontal: AppSizes.size_12, vertical: AppSizes.size_08)),
          elevation: const WidgetStatePropertyAll(0),
          textStyle:
              WidgetStatePropertyAll(AppTextTheme.lightTextTheme.labelLarge),
          shape: WidgetStatePropertyAll(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)))));

  /* -- Dark Theme -- */
  static final darkTextButtonTheme = TextButtonThemeData(
    style: ButtonStyle(
        padding: const WidgetStatePropertyAll(EdgeInsets.symmetric(
            horizontal: AppSizes.size_12, vertical: AppSizes.size_08)),
        elevation: const WidgetStatePropertyAll(0),
        textStyle: WidgetStatePropertyAll(
          AppTextTheme.lightTextTheme.labelLarge,
        ),
        shape: WidgetStatePropertyAll(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)))),
  );

  static final lightTextButtonThemeTab = TextButtonThemeData(
      style: lightTextButtonTheme.style?.copyWith(
          textStyle: WidgetStatePropertyAll(
              AppTextTheme.lightTextThemeTab.labelLarge)));

  static final darkTextButtonThemeTab = TextButtonThemeData(
      style: darkTextButtonTheme.style?.copyWith(
          textStyle: WidgetStatePropertyAll(
              AppTextTheme.darkTextThemeTab.labelLarge)));
}
