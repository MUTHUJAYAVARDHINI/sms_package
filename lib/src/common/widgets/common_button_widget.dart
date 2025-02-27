import 'package:flutter/material.dart';
import 'package:sms_package/src/constants/app_colors.dart';
import 'package:sms_package/src/constants/app_sizes.dart';

import '../../helper/device_utlization.dart';
import 'common_text_widgets.dart';


class CommonButton extends StatelessWidget {
  const CommonButton(
      {super.key,
      this.style,
      required this.onPressed,
      this.child,
      this.text,
      this.color,
      this.height,
      this.width,
      this.padding,
      this.decoration,
      this.textStyle,
      this.noHeight = false, this.backgroundColor,
      this.noWidth = false});
  final ButtonStyle? style;
  final Function() onPressed;
  final Widget? child;
  final String? text;
  final Color? color;
  final double? height;
  final double? width;
  final EdgeInsets? padding;
  final BoxDecoration? decoration;
  final TextStyle? textStyle;
  final bool noHeight;
  final bool noWidth;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    final isTab = AppDeviceUtils.isTab(MediaQuery.of(context).size);
    return Container(
      margin: padding,
      color: color,
      height: noHeight ? null : height ?? getHeight(isTab, AppSizes.size_52),
      width:
          width ?? AppDeviceUtils.getScreenWidth(MediaQuery.of(context).size),
      decoration: decoration,
      child: ElevatedButton(
        style: 
        // !isGradient
        //     ? style
        //     :
            ElevatedButton.styleFrom(backgroundColor:backgroundColor?? AppColors.transparent),
        onPressed: () => onPressed(),
        child: child ??
            TextView(
              text: text ?? "Save",
              textStyle: textStyle ??
                  Theme.of(context)
                      .textTheme
                      .titleMedium
                      ?.copyWith(color: AppColors.light),
            ),
      ),
    );
  }
}
