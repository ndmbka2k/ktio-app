import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../constants/colors.dart';

class AppBarHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColor.secondColor,
      title: Text(
        'kito',
        style: TextStyle(
          fontFamily: 'Kadwa',
          fontSize: 16.sp,
          letterSpacing: 5.sp,
          color: AppColor.primaryColor,
        ),
      ),
      centerTitle: true,
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.shopping_cart_sharp,
            color: AppColor.primaryColor,
          ),
        ),
      ],
    );
  }
}
