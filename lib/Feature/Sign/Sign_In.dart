import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoxy/Core/Common_Widget/Custom_Text.dart';
import 'package:shoxy/Core/Common_Widget/custom-button.dart';
import 'package:shoxy/Core/Common_Widget/custom_textfield.dart';
import 'package:shoxy/Core/Helper/Color.dart';
import 'package:shoxy/Core/Helper/Common_Var.dart';

import '../../Core/Common_Widget/Image_Button.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
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
            name: "Hello Again!",
            size: 30.sp,
            color: Colors.black,
          ),
          fixHeight,
          CustomText(
            name: "Wellcome Back You've Been Missed",
            size: 16.sp,
            color: Colors.black.withOpacity(0.4),
          ),
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
          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.only(left: 25.w),
            child: CustomText(
              name: "Password",
              size: 18.sp,
              color: Colors.black.withOpacity(0.6),
            ),
          ),
          fixHeight,
          CustomTextfield(
            hintext: "Password",
            passicon: Icon(Icons.remove_red_eye_outlined),
          ),
          fixHeight,
          InkWell(
            onTap: () {},
            child: Container(
              alignment: Alignment.centerRight,
              padding: EdgeInsets.only(right: 25.w),
              child: CustomText(
                name: "Recoery Password",
                color: appColor.grey,
                size: 17.sp,
              ),
            ),
          ),
          Height,
          Height,
          SizedBox(
            height: 45.h,
            width: 270.w,
            child: CustomButton(
              buttonname: "Sign In",
              color: appColor.blue,
              colors: Colors.white,
              onPressed: () {},
            ),
          ),
          Height,
          SizedBox(
            height: 45.h,
            width: 270.w,
            child: imageButton(
              widget: Image.asset(
                'images/google.png',
                scale: 3,
              ),
              buttonname: "Sign In with Google",
              color: Colors.white,
              textsize: 17.sp,
              onPressed: () {},
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 80.h),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              CustomText(
                  name: "Don't Have a Account?",
                  size: 16.sp,
                  color: appColor.grey),
              InkWell(
                onTap: (() {}),
                child: CustomText(
                    name: "\tSign Up free", size: 16.sp, color: Colors.black),
              )
            ]),
          )
        ]),
      ),
    );
  }
}
