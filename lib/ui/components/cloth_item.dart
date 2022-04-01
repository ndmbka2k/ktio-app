import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'heading6_bold.dart';
import 'heading6_regular.dart';

class ClotheItem extends StatelessWidget {
  const ClotheItem(
      {Key? key, required this.name, required this.price, required this.image})
      : super(key: key);

  final Image image;
  final String name;
  final double price;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        image,
        Container(
          padding: EdgeInsets.only(
            top: 12.h,
            bottom: 5.h,
          ),
          child: Heading6Regular(
            title: name,
          ),
        ),
        Container(
          child: Heading6Bold(
            title: price.toStringAsFixed(2),
          ),
        )
      ],
    );
  }
}
