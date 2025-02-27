
import 'package:flutter/material.dart';
import 'package:sms_package/src/constants/app_colors.dart';
import 'package:sms_package/src/core/theme/styles/text_theme.dart';


class AppBottomNavBarTheme {
  AppBottomNavBarTheme._();

  static BottomNavigationBarThemeData lightBottomNavigationBarTheme =
      const BottomNavigationBarThemeData(
    showSelectedLabels: true,
    showUnselectedLabels: true,
    type: BottomNavigationBarType.fixed,
    backgroundColor: AppColors.light,
    selectedItemColor: AppColors.colorSelected,
    unselectedItemColor: AppColors.textSecondary,
    selectedIconTheme: IconThemeData(size: 24, color: AppColors.colorSelected),
    unselectedIconTheme:
        IconThemeData(size: 24, color: AppColors.textSecondary),
  );

  static BottomNavigationBarThemeData darkBottomNavigationBarTheme =
      const BottomNavigationBarThemeData(
    showSelectedLabels: true,
    showUnselectedLabels: true,
    type: BottomNavigationBarType.fixed,
    backgroundColor: AppColors.dark,
    selectedItemColor: AppColors.colorSelected,
    unselectedItemColor: AppColors.textSecondaryDark,
    selectedIconTheme: IconThemeData(size: 24, color: AppColors.colorSelected),
    unselectedIconTheme:
        IconThemeData(size: 24, color: AppColors.textSecondary),
  );
  static BottomNavigationBarThemeData lightBottomNavigationBarThemeTab =
      lightBottomNavigationBarTheme.copyWith(
    selectedLabelStyle: AppTextTheme.lightTextThemeTab.bodyMedium
        ?.copyWith(color: lightBottomNavigationBarTheme.selectedItemColor),
    unselectedLabelStyle: AppTextTheme.lightTextThemeTab.bodyMedium
        ?.copyWith(color: lightBottomNavigationBarTheme.unselectedItemColor),
    selectedIconTheme:
        lightBottomNavigationBarTheme.selectedIconTheme?.copyWith(size: 36),
    unselectedIconTheme:
        lightBottomNavigationBarTheme.unselectedIconTheme?.copyWith(size: 36),
  );
  static BottomNavigationBarThemeData darkBottomNavigationBarThemeTab =
      darkBottomNavigationBarTheme.copyWith(
    selectedIconTheme:
        lightBottomNavigationBarTheme.selectedIconTheme?.copyWith(size: 36),
    unselectedIconTheme:
        lightBottomNavigationBarTheme.unselectedIconTheme?.copyWith(size: 36),
    selectedLabelStyle: AppTextTheme.darkTextThemeTab.bodyMedium
        ?.copyWith(color: darkBottomNavigationBarTheme.selectedItemColor),
    unselectedLabelStyle: AppTextTheme.darkTextThemeTab.bodyMedium
        ?.copyWith(color: darkBottomNavigationBarTheme.unselectedItemColor),
  );
}
