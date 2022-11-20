import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoxy/Core/Common_Widget/custom-button.dart';
import 'package:shoxy/Core/Helper/Color.dart';

import '../../Core/Common_Widget/Custom_Text.dart';
import '../../Core/Common_Widget/custom_textfield.dart';
import '../../Core/Helper/Common_Var.dart';

class Recovery extends StatefulWidget {
  const Recovery({super.key});

  @override
  State<Recovery> createState() => _RecoveryState();
}

class _RecoveryState extends State<Recovery> {
  AppColor appColor = AppColor();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appColor.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
        child: Column(children: [
          Row(
            children: [
              Container(
                padding: EdgeInsets.only(top: 20.h),
                alignment: Alignment.centerLeft,
                child: CircleAvatar(
                  radius: 20.r,
                  backgroundColor: Colors.white,
                  child: Center(
                      child: Icon(
                    Icons.arrow_back_ios_new,
                    color: appColor.grey,
                  )),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 60.h,
          ),
          CustomText(
            name: "Recovery Password",
            size: 30.sp,
            color: Colors.black,
          ),
          fixHeight,
          CustomText(
            name: "Please Enter Your Email Address To",
            size: 16.sp,
            color: Colors.black.withOpacity(0.4),
          ),
          CustomText(
            name: "Recieve a Verification Code",
            size: 16.sp,
            color: Colors.black.withOpacity(0.4),
          ),
          Height,
          Height,
          Height,
          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.only(left: 25.w),
            child: CustomText(
              name: "Email Address",
              size: 18.sp,
              color: Colors.black.withOpacity(0.6),
            ),
          ),
          fixHeight,
          CustomTextfield(
            hintext: "Email",
          ),
          Height,
          Height,
          SizedBox(
            height: 45.h,
            width: 300.w,
            child: CustomButton(
              buttonname: 'Continue',
              color: appColor.blue,
              colors: Colors.white,
              onPressed: () {},
            ),
          ),
        ]),
      ),
    );
  }
}
