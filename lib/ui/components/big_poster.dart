import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/colors.dart';

class BigPoster extends StatelessWidget {
  const BigPoster({
    Key? key,
    this.title = '',
    required this.image,
  }) : super(key: key);

  final String title;
  final Image image;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        image,
        Center(
          child: Text(
            title.toUpperCase(),
            style: TextStyle(
              color: AppColor.secondColor,
              fontFamily: 'Karla',
              fontWeight: FontWeight.w400,
              fontSize: 20.sp,
            ),
          ),
        )
      ],
    );
  }
}
