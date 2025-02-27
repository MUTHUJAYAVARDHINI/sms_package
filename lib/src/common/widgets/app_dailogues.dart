
import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';
import 'package:sms_package/src/constants/app_colors.dart';
import 'package:sms_package/src/constants/app_sizes.dart';
import 'package:sms_package/src/constants/app_style.dart';
import 'package:sms_package/src/constants/boxDecoration.dart';

import 'common_button_widget.dart';
import 'common_error_widget.dart';
import 'common_icon_button.dart';
import 'common_text_widgets.dart';



class AppDialogs {
  AppDialogs._privateConstructor();

  static final AppDialogs getInstance = AppDialogs._privateConstructor();

  bool isDialogShowing = false;

  factory AppDialogs() {
    return getInstance;
  }

  showLoader(
    BuildContext context, {
    bool barrierDismissible = false,
  }) {
    isDialogShowing = true;
    return showDialog(
      context: context,
      barrierDismissible: barrierDismissible,
      builder: (BuildContext context) {
        return const Center(child: CircularProgressIndicator());
      },
    );
  }

  dismissLoader(BuildContext context) {
    if (isDialogShowing) {
      isDialogShowing = false;
      context.pop();
    }
  }

  showAlert(BuildContext context,
      {bool barrierDismissible = false, String? error, Widget? child}) {
    isDialogShowing = true;
    return showDialog(
      context: context,
      barrierDismissible: barrierDismissible,
      builder: (BuildContext context) {
        return child ??
            CommonErrorWidget(
              error: error ?? "",
            );
      },
    );
  }

  static showAlertDialog(
    context, {
    bool barrierDismissible = true,
    EdgeInsets? insetPadding,
    Widget? child,
    double? radius,
  }) async {
    return showDialog(
      barrierDismissible: barrierDismissible,
      context: context,
      builder: (context) {
        return Dialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(radius ?? AppSizes.size_16),
            ),
            insetPadding: insetPadding ??
                const EdgeInsets.symmetric(
                  horizontal: AppSizes.size_24,
                ),
            child: child ?? const SizedBox());
      },
    );
  }
static showAlertDialogwithButton(
  BuildContext context, {
  bool barrierDismissible = true,
  EdgeInsets? insetPadding,
  Widget? child,
  double? radius,
  Color? backgroundColor,
   Color? color,
  String okButtonText = "OK",
  String cancelButtonText = "Cancel",
  required VoidCallback onOkPressed,
  required VoidCallback onCancelPressed,
}) async {
  return showDialog(
    barrierDismissible: barrierDismissible,
    context: context,
    builder: (context) {
      return Dialog(
        backgroundColor:backgroundColor??AppColors.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius ?? AppSizes.size_16),
        ),
        insetPadding: insetPadding ??
            const EdgeInsets.symmetric(
              horizontal: AppSizes.size_24,
            ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (child != null) child,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                  onPressed: onCancelPressed,
                  child: TextView(text:cancelButtonText,textStyle:  TextStyle(
                    color:color?? AppColors.light
                  ),),
                ),
                TextButton(
                  onPressed: onOkPressed,
                  child: TextView(text:okButtonText,textStyle: TextStyle(
                    color:color?? AppColors.light
                  )),
                ),
              ],
            ),
          ],
        ),
      );
    },
  );
}

  static openBottomSheet(context,
      {required Widget widget,
      bool dismissable = true,
      required VoidCallback onCloseSheet,
      bool isScrollControlled = true,
      Color? backgroundColor,
      final isTab = false,
      final isDark = false,
      final EdgeInsetsGeometry? padding,
      final double? height,
      final String? title,
      final VoidCallback? onSubmit}) {
    showModalBottomSheet(
      backgroundColor: backgroundColor,
      isScrollControlled: isScrollControlled,
      isDismissible: dismissable,
      context: context,
      builder: (context) {
        return Padding(
          padding: MediaQuery.of(context).viewInsets,
          child: Container(
            height: height,
            decoration: BoxDecorations.buildBoxDecorationTwo(
                decColor: isDark? AppColors.primaryBGDark: AppColors.primaryBG,
                radius: AppSizes.size_24,
                blurRadius: 14.9,
                opacity: 0.35,
                shadowColor: const Color(0xFF827D7D)),
            child: SingleChildScrollView(
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: CommonIconButton(
                      icon: Icon(
                        Icons.close,
                        size: isTab ? AppSizes.size_36 : AppSizes.size_24,
                        color: AppColors.gradientTwo,
                      ),
                      onPressed: () {
                        context.pop();
                      },
                    ),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      AppStyles.vGapMedium(),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: getSize(isTab, 24.0)),
                        child: TextView(
                          textAlign: TextAlign.center,
                          text: title ?? "",
                          textStyle: Theme.of(context).textTheme.headlineSmall,
                        ),
                      ),
                      AppStyles.vGapSmall(),
                      Padding(
                        padding: padding ??
                            AppStyles.paddingHorizantal(
                                value: AppSizes.size_24),
                        child: widget,
                      ),
                      if (onSubmit != null) ...[
                        AppStyles.vGapLarge(value: AppSizes.size_36),
                        CommonButton(
                          padding: const EdgeInsets.symmetric(
                              horizontal: AppSizes.size_24),
                          onPressed: () {
                            onSubmit();
                          },
                          text: "Submit",
                        ),
                      ],
                      AppStyles.vGapLarge(),
                    ],
                  ),
              ]
            )
          ),
        )
        );
      },
    ).whenComplete(() => onCloseSheet());
  }

  static snackBar(context, message,
      {bool isError = true, String? label, VoidCallback? onPressed}) {
    return SnackBar(
      action: SnackBarAction(
        label: label ?? "Ok",
        onPressed: () => onPressed != null ? onPressed() : {},
      ),
      backgroundColor: isError ? AppColors.error : AppColors.primary,
      content: TextView(
        text: message ?? "",
        textStyle: Theme.of(context)
            .textTheme
            .bodySmall
            ?.copyWith(color: AppColors.textPrimaryDark),
      ),
    );
  }

  // openGalleryImageView(data, index, context) {
  //   showImageViewerPager(
  //     context,
  //     GalleryImageProvider(imageList: data, initialIndex: index),
  //     useSafeArea: true,
  //     doubleTapZoomable: true,
  //     onViewerDismissed: (_) {
  //       SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
  //           overlays: SystemUiOverlay.values);
  //     },
  //   );
  // }

//   static okCancelDialog(BuildContext context,
//       {String? title,
//       Widget? content,
//       String? message,
//       required final Function(DialogActions) onPressed}) async {
//     return AlertDialog(
//       insetPadding: const EdgeInsets.all(AppSizes.size_16),
//       title: Row(
//         children: [Expanded(child: TextView(text: title ?? "Alert"))],
//       ),
//       content: content ??
//           TextView(
//               textAlign: TextAlign.justify, maxLine: 11, text: message ?? ""),
//       actions: <Widget>[
//         TextButton(
//           onPressed: () {
//             context.pop();
//             onPressed(DialogActions.cancel);
//           },
//           child: TextView(
//             text: DialogActions.cancel.name.toCapital,
//             textStyle: Theme.of(context)
//                 .textTheme
//                 .bodyLarge
//                 ?.copyWith(color: AppColors.primary),
//           ),
//         ),
//         TextButton(
//           onPressed: () {
//             context.pop();
//             onPressed(DialogActions.ok);
//           },
//           child: TextView(
//             text: DialogActions.ok.name.toCapital,
//             textStyle: Theme.of(context)
//                 .textTheme
//                 .bodyLarge
//                 ?.copyWith(color: AppColors.primary),
//           ),
//         ),
//       ],
//     );
//   }
// }
}