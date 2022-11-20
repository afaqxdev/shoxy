import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoxy/Core/Helper/Common_Var.dart';

class CustomButton extends StatelessWidget {
  CustomButton({
    required this.buttonname,
    required this.color,
    required this.onPressed,
    this.colors,
    this.textsize,
    Key? key,
  }) : super(key: key);

  final Color color;
  final String buttonname;
  final VoidCallback onPressed;
  final Color? colors;
  final double? textsize;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250.w,
      child: MaterialButton(
        height: 40.h,
        minWidth: double.infinity,
        onPressed: onPressed,
        color: color,
        child: Text(
          buttonname,
          style: TextStyle(
              color: colors ?? Colors.black,
              fontSize: textsize ?? 19.sp,
              fontWeight: FontWeight.bold),
        ),
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.r)),
      ),
    );
  }
}
