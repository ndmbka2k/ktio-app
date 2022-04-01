import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kito_app/constants/images.dart';
import '../../constants/colors.dart';
import '../components/big_poster.dart';
import '../components/heading2Bold.dart';
import '../components/heading5Bold.dart';
import '../components/home_page_devider.dart';
import '../components/home_page_notification.dart';

import '../components/recommend_item_card.dart';
import '../components/top_classification.dart';

class HomePage extends StatelessWidget {
  List<String> _moreInfor = ['FAQS', 'About us', 'Contact', 'Product Care'];

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
        child: SingleChildScrollView(
          child: Column(
            children: [
              const HomePageNotification(),
              TopClassification(
                isEveryone: true,
              ),
              BigPoster(
                image: Image.asset(AppImages.bigPoster),
                title: 'new in',
              ),
              Container(
                color: Color(0xff9CACBF),
                padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 20.h),
                child: Column(
                  children: [
                    RecommendItemCard(
                      title: 'New Arrivals',
                      image: Image.asset(
                        AppImages.anh2,
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    RecommendItemCard(
                      title: 'Accessories',
                      image: Image.asset(
                        AppImages.anh3,
                      ),
                    ),
                  ],
                ),
              ),
              HomePageDivider(
                tiltle: 'picker for you'.toUpperCase(),
                verticalPadding: 30.h,
              ),
              Column(
                children: [
                  Image.asset(AppImages.bigPoster1),
                  Wrap(
                    children: AppImages.imagesPickForYou
                        .map((image) => Image.asset(image))
                        .toList(),
                  ),
                ],
              ),
              HomePageDivider(
                tiltle: 'instashop'.toUpperCase(),
                verticalPadding: 15.h,
              ),
              Container(
                padding: EdgeInsets.only(left: 10.w),
                height: 160.h,
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(right: 5.w),
                      child: Image.asset(AppImages.imagesInstashop[index]),
                    );
                  },
                  itemCount: AppImages.imagesInstashop.length,
                  scrollDirection: Axis.horizontal,
                ),
              ),
              HomePageDivider(
                tiltle: 'for gifts'.toUpperCase(),
                verticalPadding: 15.h,
              ),
              Heading5Bold(
                title: 'Enter Your Email',
              ),
              Container(
                padding:
                    EdgeInsets.symmetric(horizontal: 140.w, vertical: 32.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(AppImages.facebookIcon),
                    Image.asset(AppImages.youtubeIcon),
                    Image.asset(AppImages.instaIcon),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 20.h),
                child: Heading2Bold(
                  title: 'support'.toUpperCase(),
                ),
              ),
              ...(_moreInfor.map((e) {
                return Container(
                  padding: EdgeInsets.only(bottom: 15.h),
                  child: Heading5Bold(title: e),
                );
              })).toList(),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 11.w),
                child: Divider(
                  thickness: 0.25.h,
                  color: AppColor.primaryColor,
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 18.h, bottom: 24.h),
                child: Text(
                  ' @2021 kito Ltd'.toUpperCase(),
                  style: TextStyle(
                    fontFamily: 'Karla',
                    fontSize: 9.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        fixedColor: AppColor.primaryColor,
        items: [
          BottomNavigationBarItem(
            icon: Container(
              height: 32.h,
              width: 32.w,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.black,
              ),
              margin: EdgeInsets.symmetric(vertical: 6.h),
              child: Image.asset(
                AppImages.homeIcon,
                color: Colors.white,
              ),
            ),
            label: 'Home'.toUpperCase(),
          ),
          BottomNavigationBarItem(
            icon: Container(
              height: 32.h,
              width: 32.w,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
              ),
              margin: EdgeInsets.symmetric(vertical: 6.h),
              child: Image.asset(AppImages.shoppingIcon),
            ),
            label: 'Shopping'.toUpperCase(),
          ),
          BottomNavigationBarItem(
            icon: Container(
              height: 32.h,
              width: 32.w,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
              ),
              margin: EdgeInsets.symmetric(vertical: 6.h),
              child: Image.asset(AppImages.wishlistIcon),
            ),
            label: 'Wishlist'.toUpperCase(),
          ),
          BottomNavigationBarItem(
            icon: Container(
              height: 32.h,
              width: 32.w,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
              ),
              margin: EdgeInsets.symmetric(vertical: 6.h),
              child: Image.asset(AppImages.accountIcon),
            ),
            label: 'Account'.toUpperCase(),
          ),
        ],
        selectedLabelStyle: TextStyle(
          color: AppColor.primaryColor,
          fontFamily: 'Karla',
          fontSize: 8.sp,
          fontWeight: FontWeight.w700,
        ),
        unselectedLabelStyle: TextStyle(
          color: AppColor.primaryColor,
          fontFamily: 'Karla',
          fontSize: 8.sp,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
