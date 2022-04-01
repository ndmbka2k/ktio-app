import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kito_app/constants/images.dart';
import 'package:kito_app/ui/components/top_classification.dart';

import '../../constants/colors.dart';
import '../components/big_poster.dart';
import '../components/cloth_item.dart';
import '../components/home_page_notification.dart';

class WomenScreen extends StatelessWidget {
  List section1 = [
    {
      'image': Image.asset(AppImages.anhWomen1),
      'name': 'Dress Cat & human',
      'price': 450.0
    },
    {
      'image': Image.asset(AppImages.anhWomen2),
      'name': 'temple shirt',
      'price': 70.0
    },
    {
      'image': Image.asset(AppImages.anhWomen1),
      'name': 'leggings jeans',
      'price': 150.0
    },
    {
      'image': Image.asset(AppImages.anhWomen2),
      'name': '150.0',
      'price': 200.0
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
      ),
      body: SafeArea(
        child: Column(
          children: [
            const HomePageNotification(),
            const TopClassification(
              isWomen: true,
            ),
            BigPoster(
              image: Image.asset(AppImages.bigPosterWomen),
              title: 'new in',
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(left: 10.0.w, top: 11.h),
                child: ListView.builder(
                  itemBuilder: ((context, index) {
                    return Padding(
                      padding: EdgeInsets.only(right: 5.0.w),
                      child: ClotheItem(
                        image: section1[index]['image'],
                        name: section1[index]['name'],
                        price: section1[index]['price'],
                      ),
                    );
                  }),
                  itemCount: section1.length,
                  scrollDirection: Axis.horizontal,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
