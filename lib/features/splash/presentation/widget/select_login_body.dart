import 'package:face_attendance/core/app_router.dart';
import 'package:face_attendance/core/resours/colors.dart';
import 'package:face_attendance/core/resours/strings.dart';
import 'package:face_attendance/core/widgets/custom_button.dart';
import 'package:face_attendance/core/widgets/custom_text.dart';
import 'package:face_attendance/core/widgets/logo_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sizer/sizer.dart';
class SelectLoginViewBody extends StatelessWidget {
  const SelectLoginViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.only(
        top: 18.h,
        left: 4.h,
        right: 4.h
      ),
      children: [
       const  LogoImage(),
       SizedBox(height: 20.h,),
        CustomButton(
          onPressed: (){
            GoRouter.of(context).push(AppRouter.rSignUp);
          },
            fontSize: 14.sp,
            backGroundColor: ColorManager.primary,
            textColor: ColorManager.white,
            text: Strings.registration),
        SizedBox(height: 3.h,),
        CustomButton(
          buttonStyle: TextButton.styleFrom(
              backgroundColor:ColorManager.white,
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  width: 0.2.h,
                  color: ColorManager.primary
                ),
                  borderRadius:BorderRadius.circular(15)
              )),
            backGroundColor: ColorManager.white,
            fontSize: 14.sp,
            onPressed: (){
            GoRouter.of(context).push(AppRouter.rLogin);
            },
            textColor: ColorManager.primary,
            text: Strings.adminLogin),
        SizedBox(height: 5.h,),
        Align(
          alignment: Alignment.centerRight,
          child: GestureDetector(
            onTap: (){

            },
            child: CustomText(
              text: Strings.aboutApp,
              color: ColorManager.primary,
              fontSize: 13.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );
  }
}
