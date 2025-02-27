import 'package:flutter/material.dart';
import 'package:sms_package/src/constants/app_colors.dart';
import 'package:sms_package/src/constants/app_sizes.dart';
import 'package:sms_package/src/constants/boxDecoration.dart';


class CommonSearchList extends StatelessWidget {
  const CommonSearchList({
    Key? key,
    required this.onclickItem,
    this.data = const [],
    this.padding,
    this.physics,
    this.expand = false,
    this.isShowValueOne = true,
  }) : super(key: key);

  final List<String> data;
  final Function(String) onclickItem;
  final EdgeInsetsGeometry? padding;
  final ScrollPhysics? physics;
  final bool expand;
  final bool isShowValueOne;

  @override
  Widget build(BuildContext context) {
    return expand ? Expanded(child: buildList()) : buildList();
  }

  Widget buildList() {
    return ListView.separated(
      padding: padding ??
          const EdgeInsets.fromLTRB(
              AppSizes.size_24, 0, AppSizes.size_24, AppSizes.size_24),
      shrinkWrap: true,
      itemCount: data.length,
      physics: physics ??
          const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
      separatorBuilder: (context, index) => const Divider(),
      itemBuilder: (context, index) => InkWell(
        onTap: () {
          onclickItem(data[index]);
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(data[index]),
            CommonRadioButton(onClick: () {}, isSelected: true)
          ],
        ),
      ),
    );
  }
}

class CommonRadioButton extends StatelessWidget {
  const CommonRadioButton(
      {super.key, required this.onClick, required this.isSelected});

  final Function() onClick;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onClick();
      },
      child: Container(
        height: AppSizes.size_24,
        width: AppSizes.size_24,
        decoration: BoxDecorations.decorationwithShape(
            borderColor: AppColors.white,
            borderWidth: 1,
            backgroundColor: AppColors.white,
            shape: BoxShape.circle),
        alignment: Alignment.center,
        child: Container(
          height: AppSizes.size_15,
          width: AppSizes.size_15,
          decoration: BoxDecorations.decorationwithShape(
              backgroundColor: isSelected ? AppColors.primary : AppColors.white,
              shape: BoxShape.circle),
        ),
      ),
    );
  }
}
