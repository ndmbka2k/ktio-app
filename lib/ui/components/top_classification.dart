import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import 'home_page_content_title.dart';

class TopClassification extends StatelessWidget {
  const TopClassification({
    Key? key,
    this.isEveryone = false,
    this.isWomen = false,
    this.isMen = false,
  }) : super(key: key);

  final bool isEveryone;
  final bool isWomen;
  final bool isMen;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColor.secondColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ContentTitle(
            title: 'Everyone',
            isChecked: isEveryone,
          ),
          ContentTitle(
            title: 'Women',
            isChecked: isWomen,
          ),
          ContentTitle(
            title: 'Men',
            isChecked: isMen,
          ),
        ],
      ),
    );
  }
}
