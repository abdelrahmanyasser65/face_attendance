import 'package:face_attendance/core/resours/colors.dart';
import 'package:face_attendance/core/resours/strings.dart';
import 'package:face_attendance/core/widgets/custom_form.dart';
import 'package:face_attendance/core/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../../../core/resours/images.dart';
class LoginViewBody extends StatelessWidget {
  const LoginViewBody({Key? key}) : super(key: key);
final TextEditingController emailController=TextEditingController();
final TextEditingController passwordController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.only(
        top: 7.h,
        left: 3.h,
        right: 3.h,
      ),
      children: [
        CustomText(
          text: Strings.login,
          fontWeight: FontWeight.bold,
          fontSize: 24.sp,
          color: ColorManager.primary,
        ),
        SizedBox(height: 2.h,),
        Image.asset(
          Images.logo,
          height: 15.h,
        ),
        SizedBox(
          height: 5.h,
        ),
        CustomText(
          text: Strings.email,
          fontSize: 14.sp,
          fontWeight: FontWeight.w500,
        ),
        CustomTextField(
            controller: controller,
            keyboardType: keyboardType,
            hintText: hintText),

      ],
    );
  }
}
