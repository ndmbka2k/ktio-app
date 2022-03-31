import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/colors.dart';
import '../../models/heading2Bold.dart';

class HomePageDivider extends StatelessWidget {
  const HomePageDivider({
    Key? key,
    required this.tiltle,
    required this.verticalPadding,
  }) : super(key: key);

  final String tiltle;
  final double verticalPadding;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
          EdgeInsets.symmetric(horizontal: 10.w, vertical: verticalPadding.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 112.h,
            child: Divider(
              color: AppColor.deviderColor,
              thickness: 0.25.h,
            ),
          ),
          Heading2Bold(
            title: tiltle,
          ),
          SizedBox(
            width: 112.h,
            child: Divider(
              thickness: 0.25.h,
              color: AppColor.deviderColor,
            ),
          ),
        ],
      ),
    );
  }
}
