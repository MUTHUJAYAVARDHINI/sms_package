
import 'package:flutter/material.dart';
import 'package:sms_package/src/constants/app_colors.dart';
import 'package:sms_package/src/core/theme/styles/App_bottomnavigation.dart';
import 'package:sms_package/src/core/theme/styles/app_elvation.dart';
import 'package:sms_package/src/core/theme/styles/app_text_theme.dart';
import 'package:sms_package/src/core/theme/styles/icon_theme.dart';
import 'package:sms_package/src/core/theme/styles/inputDecoration.dart';
import 'package:sms_package/src/core/theme/styles/tapp_bar.dart';
import 'package:sms_package/src/core/theme/styles/text_theme.dart';



class AppTheme {
  AppTheme._();

  static ThemeData lightTheme = ThemeData(
      useMaterial3: true,
      fontFamily: 'SF Pro Text',
      brightness: Brightness.light,
      primaryColor: AppColors.primary,
      scaffoldBackgroundColor: AppColors.primaryBG,
      textTheme: AppTextTheme.lightTextTheme,
      bottomNavigationBarTheme:
          AppBottomNavBarTheme.lightBottomNavigationBarTheme,
      appBarTheme: TAppBarTheme.lightAppBarTheme,
      elevatedButtonTheme: AppElevatedButtonTheme.lightElevatedButtonTheme,
      inputDecorationTheme: AppTextFormFieldTheme.lightInputDecorationTheme,
      iconTheme: AppIconTheme.lightIconTheme,
      textButtonTheme: AppTextButtonTheme.lightTextButtonTheme,
      bottomSheetTheme: const BottomSheetThemeData()
      );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'SF Pro Text',
    brightness: Brightness.dark,
    primaryColor: AppColors.primary,
    scaffoldBackgroundColor: AppColors.primaryBGDark,
    textTheme: AppTextTheme.darkTextTheme,
    bottomNavigationBarTheme: AppBottomNavBarTheme.darkBottomNavigationBarTheme,
    appBarTheme: TAppBarTheme.darkAppBarTheme,
    elevatedButtonTheme: AppElevatedButtonTheme.darkElevatedButtonTheme,
    inputDecorationTheme: AppTextFormFieldTheme.darkInputDecorationTheme,
    iconTheme: AppIconTheme.darkIconTheme,
    textButtonTheme: AppTextButtonTheme.darkTextButtonTheme,
  );

  static ThemeData lightThemeTab = lightTheme.copyWith(
      textTheme: AppTextTheme.lightTextThemeTab,
      bottomNavigationBarTheme:
          AppBottomNavBarTheme.lightBottomNavigationBarThemeTab,
      appBarTheme: TAppBarTheme.lightAppBarThemeTab,
      elevatedButtonTheme: AppElevatedButtonTheme.lightElevatedButtonThemeTab,
      inputDecorationTheme: AppTextFormFieldTheme.lightInputDecorationThemeTab,
      iconTheme: AppIconTheme.lightIconThemeTab,
      textButtonTheme: AppTextButtonTheme.lightTextButtonThemeTab);
  static ThemeData darkThemeTab = darkTheme.copyWith(
      textTheme: AppTextTheme.darkTextThemeTab,
      bottomNavigationBarTheme:
          AppBottomNavBarTheme.darkBottomNavigationBarThemeTab,
      appBarTheme: TAppBarTheme.darkAppBarThemeTab,
      elevatedButtonTheme: AppElevatedButtonTheme.darkElevatedButtonThemeTab,
      inputDecorationTheme: AppTextFormFieldTheme.darkInputDecorationThemeTab,
      iconTheme: AppIconTheme.darkIconThemeTab,
      textButtonTheme: AppTextButtonTheme.darkTextButtonThemeTab);
}
