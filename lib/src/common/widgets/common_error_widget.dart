// ignore_for_file: empty_catches

import 'package:flutter/material.dart';
import 'package:sms_package/src/constants/app_colors.dart';
import 'package:sms_package/src/constants/app_sizes.dart';
import 'package:sms_package/src/constants/boxDecoration.dart';
import '../../helper/device_utlization.dart';
import 'common_button_widget.dart';
import 'common_text_widgets.dart';


class CommonErrorWidget extends StatelessWidget {
  const CommonErrorWidget({
    super.key,
    required this.error,
    this.onPressCancel,
    this.isError = true,
    this.onPressAction,
    this.textAction, this.margin,
  });
  final String error;
  final VoidCallback? onPressCancel;
  final bool isError;

  final Function()? onPressAction;
  final String? textAction;
  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final brightness = MediaQuery.of(context).platformBrightness;
    final isDark = AppDeviceUtils.isDarkMode(brightness);
    return Container(
      margin:margin ,
      decoration: BoxDecorations.buildBoxDecoratioOne(
        decColor: isDark?AppColors.dark:null,
      ),
      width: AppDeviceUtils.getScreenWidth(MediaQuery.of(context).size),
      padding: const EdgeInsets.all(AppSizes.size_24),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (onPressCancel != null)
              Align(
                alignment: Alignment.topRight,
                child: IconButton(
                  onPressed: () => onPressCancel!(),
                  icon: const Icon(
                    Icons.close,
                  ),
                ),
              ),
            Icon(
              Icons.error,
              size: AppSizes.size_48,
              color: isError ? AppColors.error : AppColors.primary,
            ),
            const SizedBox(
              height: AppSizes.size_24,
            ),
            TextView(
              text: error,
              textAlign: TextAlign.center,
              textStyle: Theme.of(context).textTheme.bodyMedium,
            ),
            if (onPressAction != null) ...[
              const SizedBox(
                height: AppSizes.size_24,
              ),
              CommonButton(
                width: AppDeviceUtils.getScreenWidth(size) * 0.3,
                onPressed: () {
                  onPressAction!();
                },
                text: "Close",
              )
            ]
          ],
        ),
      ),
    );
  }
}
