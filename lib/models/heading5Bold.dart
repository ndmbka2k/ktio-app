import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Heading5Bold extends StatelessWidget {
  const Heading5Bold({
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
        fontSize: 10.sp,
        fontWeight: FontWeight.w700,
        letterSpacing: 1.sp,
      ),
    );
  }
}
