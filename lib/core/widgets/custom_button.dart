import 'package:face_attendance/core/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {Key? key,
        required this.backGroundColor,
        required this.textColor,
        this.borderRadius,
        required this.text,
        this.fontSize, this.onPressed, this.buttonStyle})
      : super(key: key);
  final Color backGroundColor;
  final Color textColor;
  final BorderRadius? borderRadius;
  final String text;
  final double? fontSize;
  final void Function()?onPressed;
  final ButtonStyle ?buttonStyle;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 6.h,
      child: TextButton(
        style:buttonStyle ?? TextButton.styleFrom(
            backgroundColor:backGroundColor,
            shape: RoundedRectangleBorder(
                borderRadius:borderRadius??BorderRadius.circular(15)
            )),
        onPressed: onPressed,
        child: CustomText(
          text: text,
          fontSize: fontSize,
          fontWeight: FontWeight.w500,
          color: textColor,
        ),
      ),
    );
  }
}