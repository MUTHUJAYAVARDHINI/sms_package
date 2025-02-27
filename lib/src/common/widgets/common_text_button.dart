
import 'package:flutter/material.dart';
import 'package:sms_package/src/helper/device_utlization.dart';

import 'common_text_widgets.dart';


class CommonTextButton extends StatelessWidget {
  const CommonTextButton({
    super.key,
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
  });
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

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: padding,
      color: color,
      height: height,
      width:
          width ?? AppDeviceUtils.getScreenWidth(MediaQuery.of(context).size),
      decoration: decoration,
      child: TextButton(
        style: style,
        onPressed: () => onPressed(),
        child: child ??
            TextView(
                text: text ?? "Save",
                textOverflow: TextOverflow.ellipsis,
                textStyle:
                    textStyle ?? Theme.of(context).textTheme.titleMedium),
      ),
    );
  }
}
