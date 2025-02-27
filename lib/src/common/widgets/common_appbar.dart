
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sms_package/src/constants/app_colors.dart';
import '../../helper/device_utlization.dart';
import 'common_text_widgets.dart';



class CommonAppbar extends StatelessWidget implements PreferredSizeWidget {
  const CommonAppbar({
    super.key,
    this.onPressLead,
    this.title,
    this.actions,
    this.iconLead,
    this.showLead,
    this.bottom,
    this.height,
    this.centerTitle,
    this.backgroundColor,
    this.flexibleSpace,
    this.isGradient=false,
    this.textStyle
  });
  final List<Widget>? actions;
  final Widget? iconLead;
  final VoidCallback? onPressLead;
  final dynamic title;
  final bool? showLead;
  final PreferredSizeWidget? bottom;
  final double? height;
  final bool? centerTitle;
  final Color? backgroundColor;
  final Widget? flexibleSpace;
  final bool isGradient;
  final TextStyle? textStyle;
  

  @override
  Widget build(BuildContext context) {
    return AppBar(
      titleTextStyle:Theme.of(context)
          .appBarTheme
          .titleTextStyle
          ?.copyWith(color: AppColors.light),
      iconTheme: Theme.of(context)
          .appBarTheme
          .iconTheme
          ?.copyWith(color: AppColors.light),
      backgroundColor: backgroundColor??AppColors.primary,
      flexibleSpace: flexibleSpace,
      centerTitle: centerTitle,
      leading: showLead ?? true
          ? IconButton(
              onPressed: () {
                if (onPressLead != null) {
                  onPressLead!();
                } else {
                  context.pop();
                }
              },
              icon: iconLead ??
                  Icon(
                    AppDeviceUtils.isAndroid()
                        ? Icons.arrow_back
                        : Icons.arrow_back_ios,
                  ))
          : const SizedBox(),
      actions: actions,
      title: TextView(
        text: title ?? "",
        textStyle: textStyle,
      ),
      bottom: bottom,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height ?? kToolbarHeight);
}
