import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/colors.dart';

class Heading2Bold extends StatelessWidget {
  const Heading2Bold({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontFamily: 'Karla',
        fontSize: 16.sp,
        fontWeight: FontWeight.w700,
        color: AppColor.deviderColor,
      ),
    );
  }
}
