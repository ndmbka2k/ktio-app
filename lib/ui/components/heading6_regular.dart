import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Heading6Regular extends StatelessWidget {
  const Heading6Regular({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title.toUpperCase(),
      style: TextStyle(
        fontFamily: 'Karla',
        fontSize: 9.sp,
        fontWeight: FontWeight.w400,
      ),
    );
  }
}
