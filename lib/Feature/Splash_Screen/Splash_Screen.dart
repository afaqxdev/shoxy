import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:shoxy/Core/Helper/Color.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({super.key});
  AppColor appcolor = AppColor();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appcolor.blue,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
                margin: EdgeInsets.only(top: 40.h),
                child: Image.asset("images/logo.png")),
            Container(
                alignment: Alignment.bottomCenter,
                height: 250.h,
                margin: EdgeInsets.only(top: 60.h),
                child: Lottie.asset(
                  "images/load.json",
                ))
          ],
        ),
      ),
    );
  }
}
