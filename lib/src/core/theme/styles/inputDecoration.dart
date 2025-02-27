
import 'package:flutter/material.dart';
import 'package:sms_package/src/constants/app_colors.dart';
import 'package:sms_package/src/constants/app_sizes.dart';

class AppTextFormFieldTheme {
  AppTextFormFieldTheme();

  static InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 2,
    prefixIconColor: AppColors.textHint,
    suffixIconColor: AppColors.textHint,
    contentPadding: const EdgeInsets.symmetric(
        horizontal: AppSizes.size_12, vertical: 10.5),
    labelStyle: const TextStyle().copyWith(
        fontSize: 14,
        color: AppColors.textPrimary,
        fontWeight: FontWeight.w500),
    hintStyle: const TextStyle().copyWith(
        fontSize: 14, color: AppColors.textHint, fontWeight: FontWeight.w400),
    errorStyle: const TextStyle().copyWith(
        fontSize: 14, color: AppColors.error, fontWeight: FontWeight.w300),
    border: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(AppSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1.5, color: AppColors.textBorder),
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(AppSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1.5, color: AppColors.textBorder),
    ),
    focusedBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(AppSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1.5, color: AppColors.colorSelected),
    ),
    errorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(AppSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1.5, color: AppColors.error),
    ),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(AppSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1.5, color: AppColors.error),
    ),
  );

  static InputDecorationTheme darkInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 2,
    prefixIconColor: AppColors.textHint,
    suffixIconColor: AppColors.textHint,
    contentPadding: const EdgeInsets.symmetric(
        horizontal: AppSizes.size_12, vertical: 10.5),
    labelStyle: const TextStyle().copyWith(
        fontSize: 14,
        color: AppColors.textPrimaryDark,
        fontWeight: FontWeight.w500),
    hintStyle: const TextStyle().copyWith(
        fontSize: 14, color: AppColors.textHint, fontWeight: FontWeight.w400),
    errorStyle: const TextStyle().copyWith(
        fontSize: 14, color: AppColors.error, fontWeight: FontWeight.w300),
    border: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(AppSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1.5, color: AppColors.textBorder),
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(AppSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1.5, color: AppColors.textBorder),
    ),
    focusedBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(AppSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1.5, color: AppColors.colorSelected),
    ),
    errorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(AppSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1.5, color: AppColors.error),
    ),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(AppSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1.5, color: AppColors.error),
    ),
  );

  static InputDecorationTheme lightInputDecorationThemeTab =
      lightInputDecorationTheme.copyWith(
    contentPadding: const EdgeInsets.symmetric(horizontal: 18, vertical: 20.0),
    labelStyle: lightInputDecorationTheme.labelStyle?.copyWith(fontSize: 24),
    hintStyle: lightInputDecorationTheme.hintStyle?.copyWith(fontSize: 20),
    errorStyle: lightInputDecorationTheme.errorStyle?.copyWith(fontSize: 24),
    border: lightInputDecorationTheme.border?.copyWith(
        borderSide: const BorderSide(width: 2.0, color: AppColors.textBorder)),
  );
  static InputDecorationTheme darkInputDecorationThemeTab =
      lightInputDecorationTheme.copyWith(
    contentPadding: const EdgeInsets.symmetric(horizontal: 18, vertical: 20.0),
    labelStyle: darkInputDecorationTheme.labelStyle?.copyWith(fontSize: 24),
    hintStyle: darkInputDecorationTheme.hintStyle?.copyWith(fontSize: 24),
    errorStyle: darkInputDecorationTheme.errorStyle?.copyWith(fontSize: 24),
    border: darkInputDecorationTheme.border?.copyWith(
        borderSide: const BorderSide(width: 2.0, color: AppColors.textBorder)),
  );
}
