
import 'package:flutter/material.dart';
import 'package:sms_package/src/constants/app_colors.dart';

/* -- Light & Dark Elevated Button Themes -- */
class AppIconTheme {
  AppIconTheme._(); //To avoid creating instances

  /* -- Light Theme -- */

  static const lightIconTheme =
      IconThemeData(size: 20, color: AppColors.textHint);
  static const darkIconTheme =
      IconThemeData(size: 20, color: AppColors.textHint);
  static final lightIconThemeTab = lightIconTheme.copyWith(size: 36);
  static final darkIconThemeTab = darkIconTheme.copyWith(size: 36);

  /* -- Dark Theme -- */
}
