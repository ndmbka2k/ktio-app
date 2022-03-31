import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kito_app/constants/colors.dart';

class ContentTitle extends StatelessWidget {
  const ContentTitle({Key? key, required this.title, required this.isChecked})
      : super(key: key);

  final String title;
  final bool isChecked;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 6.h),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: isChecked ? AppColor.primaryColor : Color(0xffffffff),
        borderRadius: BorderRadius.circular(3.sp),
      ),
      height: 25.h,
      width: 80.w,
      child: Text(
        title,
        style: TextStyle(
          color: isChecked ? Color(0xffffffff) : AppColor.primaryColor,
          fontFamily: 'Karla',
          fontSize: 12.sp,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
