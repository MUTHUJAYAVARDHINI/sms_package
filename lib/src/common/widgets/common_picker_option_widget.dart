
import 'package:flutter/Material.dart';
import 'package:sms_package/src/constants/app_colors.dart';
import 'package:sms_package/src/constants/app_sizes.dart';
import 'package:sms_package/src/constants/app_style.dart';
import 'package:sms_package/src/helper/app_extension.dart';
import 'package:sms_package/src/helper/enums.dart';

import 'common_text_button.dart';
import 'common_text_widgets.dart';

class CommonPickerOptionWidget extends StatelessWidget {
  const CommonPickerOptionWidget(
      {super.key,
      required this.onPressed,
      required this.isDark,
      required this.isTab,
      this.isFiles});

  final bool isDark;
  final bool isTab;
  final bool? isFiles;
  final Function(PickerType) onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        pickerWidget(context, Icons.camera_alt, PickerType.camera),
        AppStyles.hGapMedium(),
        pickerWidget(context, Icons.photo_library, PickerType.gallery),
        AppStyles.hGapMedium(),
        if (isFiles ?? false) ...[
          pickerWidget(context, Icons.drive_file_move_sharp, PickerType.files),
          AppStyles.hGapMedium(),
        ]
      ],
    );
  }

  pickerWidget(
      BuildContext context, IconData optionIcon, PickerType optionTitle) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CommonTextButton(
          padding: EdgeInsets.zero,
          style: Theme.of(context).elevatedButtonTheme.style?.copyWith(
              shape: AppStyles.shapeCard(radius: AppSizes.size_08),
              padding: WidgetStatePropertyAll(AppStyles.paddingAll(
                  value: getSize(isTab, AppSizes.size_02))),
              backgroundColor: WidgetStatePropertyAll(
                  isDark ? AppColors.dark : AppColors.lightBlueGray)),
          height: getHeight(isTab, AppSizes.size_52),
          width: getWidth(isTab, AppSizes.size_52),
          onPressed: () {
            // context.pop();
            onPressed(optionTitle);
          },
          child: Icon(
            optionIcon,
            size: getSize(isTab, AppSizes.size_32),
            color: AppColors.primary,
          ),
        ),
        AppStyles.vGapSmall(),
        TextView(
          text: optionTitle.name.toCapital, // Text for gallery
          textStyle: Theme.of(context)
              .textTheme
              .bodyLarge
              ?.copyWith(color: AppColors.primary),
        ),
      ],
    );
  }
}
