import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoxy/Core/Common_Widget/custom-button.dart';
import 'package:shoxy/Core/Helper/Color.dart';
import 'package:shoxy/Core/Helper/Common_Var.dart';

import '../../Core/Common_Widget/Custom_Text.dart';

class LandingScreen extends StatelessWidget {
  LandingScreen({super.key});
  AppColor appcolor = AppColor();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appcolor.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 15),
        child: Stack(
          children: [
            Positioned(
              left: 40.w,
              top: 170.h,
              child: CircleAvatar(
                backgroundColor: appcolor.blue.withOpacity(0.5),
                radius: 7.r,
              ),
            ),
            Positioned(
                top: 190.h,
                left: 20.w,
                child: CustomText(
                  name: "SHOXY",
                  size: 150.sp,
                  color: appcolor.grey.withOpacity(0.2),
                )),
            Positioned(
              top: 70.h,
              child: Container(
                height: 380.h,
                child: Image.asset(
                  "images/1.png",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              left: 20.w,
              top: 400.h,
              child: CircleAvatar(
                backgroundColor: appcolor.blue.withOpacity(0.5),
                radius: 7.r,
              ),
            ),
            Positioned(
              left: 260.w,
              top: 350.h,
              child: CircleAvatar(
                backgroundColor: appcolor.blue.withOpacity(0.5),
                radius: 7.r,
              ),
            ),
            Positioned(
                left: 15.w,
                top: 440.h,
                child: CustomText(
                  name: "Start Journey With\nShoxy",
                  size: 40.sp,
                  color: Colors.black,
                )),
            Positioned(
                left: 15.w,
                top: 520.h,
                child: CustomText(
                    name: "Smart,Gergeous & Fashionable\nCollection",
                    size: 20.sp,
                    color: Colors.black.withOpacity(0.5))),
            Positioned(
              top: 610.h,
              left: 15.w,
              child: Row(
                children: [
                  Container(
                    height: 5.h,
                    width: 30.w,
                    decoration: BoxDecoration(
                        color: appcolor.blue,
                        borderRadius: BorderRadius.circular(12.r)),
                  ),
                  Width,
                  Container(
                    height: 5.h,
                    width: 14.w,
                    decoration: BoxDecoration(
                        color: appcolor.grey,
                        borderRadius: BorderRadius.circular(12.r)),
                  ),
                  Width,
                  Container(
                    height: 5.h,
                    width: 10.w,
                    decoration: BoxDecoration(
                        color: appcolor.grey,
                        borderRadius: BorderRadius.circular(12.r)),
                  ),
                  SizedBox(
                    width: 105.w,
                  ),
                  SizedBox(
                    width: 120.w,
                    height: 60,
                    child: CustomButton(
                      buttonname: "Get Started",
                      colors: Colors.white,
                      color: appcolor.blue,
                      onPressed: () {},
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
