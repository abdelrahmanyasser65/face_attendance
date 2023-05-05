import 'package:face_attendance/core/resours/images.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
class LogoImage extends StatelessWidget {
  const LogoImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      Images.logo,
      height: 17.h,
    );
  }
}
