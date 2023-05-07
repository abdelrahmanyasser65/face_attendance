import 'package:face_attendance/core/resours/colors.dart';
import 'package:face_attendance/core/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {Key? key,
        this.suffixIcon,
        this.onSubmitted,
        required this.controller,
        this.onChanged,
        required this.keyboardType,
        this.maxLines = 1,
        required this.hintText,
        this.enabled=true,
        this.showCursor,
        this.onTap,
        this.obscureText = false})
      : super(key: key);
  final TextEditingController controller;
  final Function(String)? onChanged;
  final Function(String)?onSubmitted;
  final TextInputType keyboardType;
  final bool obscureText;
  final int maxLines;
  final String hintText;
  final Widget ?suffixIcon;
  final bool enabled ;
  final Function()? onTap;
  final bool ?showCursor;
  @override
  Widget build(BuildContext context) {
    return TextField(
      enabled: enabled,

      controller: controller,
      onChanged: onChanged,
      onTap: onTap,
      showCursor:showCursor ,
      keyboardType: keyboardType,
      cursorColor: ColorManager.grey,
      obscureText: obscureText,
      maxLines: maxLines,
      onSubmitted:onSubmitted ,
      decoration: InputDecoration(
        suffixIcon:suffixIcon,
        hintText: hintText,

        hintStyle: TextStyle(fontSize: 15, color: ColorManager.hintTextColor),
        fillColor: ColorManager.lightGray,
        filled: true,
        contentPadding:
        EdgeInsets.symmetric(vertical: 1.h, horizontal: 2.h),
        border: buildOutlineInputBorder(),
        enabledBorder: buildOutlineInputBorder(),
        disabledBorder: buildOutlineInputBorder(),
        focusedBorder: buildOutlineInputBorder(),
      ),
    );
  }

  OutlineInputBorder buildOutlineInputBorder() {
    return OutlineInputBorder(
      borderSide: BorderSide.none,
      borderRadius: BorderRadius.circular(12),
    );
  }
}