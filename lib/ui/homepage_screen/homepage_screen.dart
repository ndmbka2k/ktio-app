import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kito_app/constants/images.dart';
import 'package:kito_app/models/heading2Bold.dart';
import '../../constants/colors.dart';
import '../../models/heading5Bold.dart';
import '../components/home_page_content_title.dart';
import '../components/home_page_devider.dart';
import '../components/home_page_notification.dart';

import '../components/recommend_item_card.dart';

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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  ContentTitle(
                    title: 'Everyone',
                    isChecked: true,
                  ),
                  ContentTitle(
                    title: 'Women',
                    isChecked: false,
                  ),
                  ContentTitle(
                    title: 'Men',
                    isChecked: false,
                  )
                ],
              ),
              Container(
                height: 312.h,
                child: Stack(
                  children: [
                    Image.asset(AppImages.bigPoster),
                    Center(
                      child: Text(
                        'new in'.toUpperCase(),
                        style: TextStyle(
                          color: AppColor.secondColor,
                          fontFamily: 'Karla',
                          fontWeight: FontWeight.w400,
                          fontSize: 20.sp,
                        ),
                      ),
                    )
                  ],
                ),
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
                padding: EdgeInsets.only(top: 18.h),
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
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_max_outlined,
            ),
            label: 'Home'.toUpperCase(),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_bag_outlined,
            ),
            label: 'Shop'.toUpperCase(),
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.checklist_outlined,
              ),
              label: 'Wishlist'.toUpperCase()),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.manage_accounts_outlined,
              ),
              label: 'account'.toUpperCase()),
        ],
        currentIndex: 0,
        onTap: (index) {},
      ),
    );
  }
}
