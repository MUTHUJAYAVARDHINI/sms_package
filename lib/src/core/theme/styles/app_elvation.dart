
import 'package:flutter/material.dart';
import 'package:sms_package/src/constants/app_colors.dart';
import 'package:sms_package/src/constants/app_sizes.dart';


/* -- Light & Dark Elevated Button Themes -- */
class AppElevatedButtonTheme {
  AppElevatedButtonTheme._(); //To avoid creating instances

  /* -- Light Theme -- */
  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: AppColors.colorButton,
      backgroundColor: AppColors.colorButton,
      padding: const EdgeInsets.all(AppSizes.size_06),
      textStyle: const TextStyle(
          fontSize: 16,
          color: AppColors.light,
          fontWeight: FontWeight.w500),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSizes.size_10)),
    ),
  );
 

  /* -- Dark Theme -- */
  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: AppColors.colorButton,
      backgroundColor: AppColors.colorButton,
      padding: const EdgeInsets.all(AppSizes.size_06),
      textStyle: const TextStyle(
          fontSize: 16,
          color: AppColors.light,
          fontWeight: FontWeight.w500),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSizes.size_10)),
    ),
  );

   static final lightElevatedButtonThemeTab = 
   
   ElevatedButtonThemeData(
    style: lightElevatedButtonTheme.style?.copyWith(
        textStyle: const WidgetStatePropertyAll(TextStyle(
            fontSize: 24,
            color: AppColors.light,
            fontWeight: FontWeight.w500))),
  );

   static final darkElevatedButtonThemeTab = ElevatedButtonThemeData(
    style: darkElevatedButtonTheme.style?.copyWith(
        textStyle: const WidgetStatePropertyAll(TextStyle(
            fontSize: 24,
            color: AppColors.light,
            fontWeight: FontWeight.w500))),
  );
}
