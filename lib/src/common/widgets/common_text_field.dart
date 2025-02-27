// import 'package:flutter/material.dart';
// import 'package:trainer/src/common/widgets/commontextinput.dart';
// import 'package:trainer/src/core/constants/app_colors.dart';

// import '../../core/constants/app_sizes.dart';

// class CommonTextField extends StatelessWidget {
 
//   final String hint;
//   final TextInputType inputType;
//   final TextInputAction inputAction;
//   final int? maxLength;
//   final String? Function(String?)? validator;
//   final void Function(String?)? onSaved;
//    final String? initialValue;
//   const CommonTextField({
//     Key? key,

//     required this.hint,
//     this.inputType = TextInputType.text,
//     this.inputAction = TextInputAction.done,
//     this.maxLength,
//     this.validator,
//     this.onSaved,
//     this.initialValue
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return TextInput(
//       initialValue: initialValue,
  
//       fillColor: AppColors.white,
//       inputType: inputType,
//       inputAction: inputAction,
//       hint: hint,
//       hintStyle: TextStyle(
//         color: AppColors.textHint,
//         fontSize: AppSizes.size_14,
//         fontWeight: FontWeight.w400,
//       ),
//       maxLength: maxLength,
//       onEditingComplete: () {
//         FocusScope.of(context).nextFocus();
//       },
//       validator: validator,
//       onSaved: onSaved,
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:sms_package/src/constants/app_colors.dart';
import 'package:sms_package/src/constants/app_sizes.dart';
import 'commontextinput.dart';

class CommonTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String hint;
  final TextInputType inputType;
  final TextInputAction inputAction;
  final int? maxLength;
  final String? Function(String? value)? validator;
  final void Function(String? value)? onSaved;
  final String? initialValue;

  const CommonTextField({
    Key? key,
    this.controller,
    required this.hint,
    this.inputType = TextInputType.text,
    this.inputAction = TextInputAction.done,
    this.maxLength,
    this.validator,
    this.onSaved,
    this.initialValue,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Use the provided controller, or initialize one with initialValue
    final TextEditingController effectiveController =
        controller ?? TextEditingController(text: initialValue);

    return TextInput(
      controller: effectiveController,
      fillColor: AppColors.white,
      inputType: inputType,
      inputAction: inputAction,
      hint: hint,
      hintStyle: TextStyle(
        color: AppColors.textHint,
        fontSize: AppSizes.size_14,
        fontWeight: FontWeight.w400,
      ),
      maxLength: maxLength,
      onEditingComplete: () {
        FocusScope.of(context).nextFocus();
      },
      validator: validator,
      onSaved: onSaved,
    );
  }
}
