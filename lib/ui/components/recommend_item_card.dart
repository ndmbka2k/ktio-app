import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/images.dart';

class RecommendItemCard extends StatelessWidget {
  const RecommendItemCard({
    Key? key,
    required this.title,
    required this.image,
  }) : super(key: key);

  final String title;
  final Image image;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        image,
        Positioned(
          top: 82.h,
          left: 110.w,
          child: Container(
            alignment: Alignment.center,
            height: 41.h,
            width: 136.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50.r),
              border: Border.all(
                width: 0.25.w,
                color: Color(0xffF1F1F1),
              ),
            ),
            child: Text(
              title,
              style: TextStyle(
                color: Color(0xffF1F1F1),
                fontFamily: 'Karla',
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        )
      ],
    );
  }
}
