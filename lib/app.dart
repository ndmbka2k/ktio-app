import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kito_app/ui/homepage_screen/homepage_screen.dart';
import 'package:kito_app/ui/women_screen/women_screen.dart';

class KitoApp extends StatelessWidget {
  const KitoApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: () => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: WomenScreen(),
      ),
    );
  }
}
