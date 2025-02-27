
import 'package:flutter/material.dart';
import 'package:sms_package/src/constants/app_colors.dart';

/// Custom Class for Light & Dark Text Themes
class AppTextTheme {
  AppTextTheme._(); // To avoid creating instances

  /// Customizable Light Text Theme
  static TextTheme lightTextTheme = TextTheme(
    headlineLarge: const TextStyle().copyWith(
        fontSize: 32.0,
        fontWeight: FontWeight.bold,
        color: AppColors.textPrimary),
    headlineMedium: const TextStyle().copyWith(
        fontSize: 24.0,
        fontWeight: FontWeight.w600,
        color: AppColors.textPrimary),
    headlineSmall: const TextStyle().copyWith(
        fontSize: 18.0,
        fontWeight: FontWeight.w600,
        color: AppColors.textPrimary),
    titleLarge: const TextStyle().copyWith(
        fontSize: 16.0,
        fontWeight: FontWeight.w600,
        color: AppColors.textPrimary),
    titleMedium: const TextStyle().copyWith(
        fontSize: 16.0,
        fontWeight: FontWeight.w500,
        color: AppColors.textPrimary),
    titleSmall: const TextStyle().copyWith(
        fontSize: 16.0,
        fontWeight: FontWeight.w400,
        color: AppColors.textPrimary),
    bodyLarge: const TextStyle().copyWith(
        fontSize: 14.0,
        fontWeight: FontWeight.w500,
        color: AppColors.textPrimary),
    bodyMedium: const TextStyle().copyWith(
        fontSize: 14.0,
        fontWeight: FontWeight.w400,
        color: AppColors.textPrimary),
    bodySmall: const TextStyle().copyWith(
        fontSize: 14.0,
        fontWeight: FontWeight.normal,
        color: AppColors.textPrimary),
    labelLarge: const TextStyle().copyWith(
        fontSize: 12.0,
        fontWeight: FontWeight.w500,
        color: AppColors.textPrimary),
    labelMedium: const TextStyle().copyWith(
        fontSize: 12.0,
        fontWeight: FontWeight.w400,
        color: AppColors.textPrimary),
    labelSmall: const TextStyle().copyWith(
        fontSize: 12.0,
        fontWeight: FontWeight.normal,
        color: AppColors.textPrimary),
  );

  /// Customizable Dark Text Theme
  static TextTheme darkTextTheme = TextTheme(
    headlineLarge: const TextStyle().copyWith(
        fontSize: 32.0,
        fontWeight: FontWeight.bold,
        color: AppColors.textPrimaryDark),
    headlineMedium: const TextStyle().copyWith(
        fontSize: 24.0,
        fontWeight: FontWeight.w600,
        color: AppColors.textPrimaryDark),
    headlineSmall: const TextStyle().copyWith(
        fontSize: 18.0,
        fontWeight: FontWeight.w600,
        color: AppColors.textPrimaryDark),
    titleLarge: const TextStyle().copyWith(
        fontSize: 16.0,
        fontWeight: FontWeight.w600,
        color: AppColors.textPrimaryDark),
    titleMedium: const TextStyle().copyWith(
        fontSize: 16.0,
        fontWeight: FontWeight.w500,
        color: AppColors.textPrimaryDark),
    titleSmall: const TextStyle().copyWith(
        fontSize: 16.0,
        fontWeight: FontWeight.w400,
        color: AppColors.textPrimaryDark),
    bodyLarge: const TextStyle().copyWith(
        fontSize: 14.0,
        fontWeight: FontWeight.w500,
        color: AppColors.textPrimaryDark),
    bodyMedium: const TextStyle().copyWith(
        fontSize: 14.0, fontWeight: FontWeight.w400, color: AppColors.light),
    bodySmall: const TextStyle().copyWith(
        fontSize: 14.0, fontWeight: FontWeight.normal, color: AppColors.light),
    labelLarge: const TextStyle().copyWith(
        fontSize: 12.0,
        fontWeight: FontWeight.w500,
        color: AppColors.textPrimaryDark),
    labelMedium: const TextStyle().copyWith(
        fontSize: 12.0, fontWeight: FontWeight.w400, color: AppColors.light),
    labelSmall: const TextStyle().copyWith(
        fontSize: 12.0,
        fontWeight: FontWeight.normal,
        color: AppColors.textPrimaryDark),
  );

  static TextTheme lightTextThemeTab = lightTextTheme.copyWith(
      headlineLarge: lightTextTheme.headlineLarge?.copyWith(fontSize: 48),
      headlineMedium: lightTextTheme.headlineMedium?.copyWith(fontSize: 36),
      headlineSmall: lightTextTheme.headlineSmall?.copyWith(fontSize: 26),
      titleLarge: lightTextTheme.titleLarge?.copyWith(fontSize: 24),
      titleMedium: lightTextTheme.titleMedium?.copyWith(fontSize: 24),
      titleSmall: lightTextTheme.titleSmall?.copyWith(fontSize: 24),
      bodyLarge: lightTextTheme.bodyLarge?.copyWith(fontSize: 20),
      bodyMedium: lightTextTheme.bodyMedium?.copyWith(fontSize: 20),
      bodySmall: lightTextTheme.bodySmall?.copyWith(fontSize: 20),
      labelLarge: lightTextTheme.labelLarge?.copyWith(fontSize: 18),
      labelMedium: lightTextTheme.labelMedium?.copyWith(fontSize: 18),
      labelSmall: lightTextTheme.labelSmall?.copyWith(fontSize: 18));

 
  static TextTheme darkTextThemeTab = darkTextTheme.copyWith(
      headlineLarge: darkTextTheme.headlineLarge?.copyWith(fontSize: 48),
      headlineMedium: darkTextTheme.headlineMedium?.copyWith(fontSize: 36),
      headlineSmall: darkTextTheme.headlineSmall?.copyWith(fontSize: 26),
      titleLarge: darkTextTheme.titleLarge?.copyWith(fontSize: 24),
      titleMedium: darkTextTheme.titleMedium?.copyWith(fontSize: 24),
      titleSmall: darkTextTheme.titleSmall?.copyWith(fontSize: 24),
      bodyLarge: darkTextTheme.bodyLarge?.copyWith(fontSize: 20),
      bodyMedium: darkTextTheme.bodyMedium?.copyWith(fontSize: 20),
      bodySmall: darkTextTheme.bodySmall?.copyWith(fontSize: 20),
      labelLarge: darkTextTheme.labelLarge?.copyWith(fontSize: 18),
      labelMedium: darkTextTheme.labelMedium?.copyWith(fontSize: 18),
      labelSmall: darkTextTheme.labelSmall?.copyWith(fontSize: 18));
 
}
