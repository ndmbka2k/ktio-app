import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kito_app/constants/colors.dart';

class HomePageNotification extends StatelessWidget {
  const HomePageNotification({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 40.h,
      width: double.infinity,
      color: AppColor.primaryColor,
      child: Text(
        'Free Shipping On Orders Over \$900',
        style: TextStyle(
          color: Colors.white,
          fontFamily: 'Karla',
          fontSize: 10.sp,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
