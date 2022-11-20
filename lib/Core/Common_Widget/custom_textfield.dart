import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextfield extends StatelessWidget {
  CustomTextfield({
    required this.hintext,
    this.iconname,
    this.passicon,
    this.showtext,
    this.controller,
    this.onchanged,
    this.color,
    this.vlid,
    Key? key,
  }) : super(key: key);
  final String hintext;

  final Icon? iconname;
  final Widget? passicon;
  final showtext;
  final Color? color;
  String? Function(String?)? vlid;
  Function(String value)? onchanged;

  TextEditingController? controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40.h,
      width: 270.h,
      child: TextFormField(
        validator: vlid,
        controller: controller,
        onChanged: onchanged,
        obscureText: showtext ?? false,
        style: TextStyle(color: Colors.black),
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          focusColor: Colors.white,
          hintText: hintext,
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color: Color.fromARGB(255, 255, 255, 255), width: 5.0),
            borderRadius: BorderRadius.circular(25.0),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color: Color.fromARGB(255, 255, 255, 255), width: 5.0),
            borderRadius: BorderRadius.circular(25.0),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color: Color.fromARGB(255, 255, 255, 255), width: 5.0),
            borderRadius: BorderRadius.circular(25.0),
          ),
          hintStyle: TextStyle(
            fontSize: 14.sp,
            color: color ?? Colors.black,
          ),
          prefixIcon: iconname,
          suffixIcon: passicon,
        ),
      ),
    );
  }
}
