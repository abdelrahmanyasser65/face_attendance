import 'package:face_attendance/core/resours/colors.dart';
import 'package:face_attendance/core/resours/strings.dart';
import 'package:face_attendance/core/widgets/custom_button.dart';
import 'package:face_attendance/core/widgets/custom_form.dart';
import 'package:face_attendance/core/widgets/custom_text.dart';
import 'package:face_attendance/features/login/presentation/view_model/login_cubit.dart';
import 'package:face_attendance/features/sign_up/presentation/view_model/sign_up_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:sizer/sizer.dart';

import '../../../../../core/app_router.dart';
import '../../../../../core/resours/images.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignUpCubit, SignUpState>(
      builder: (context, state) {
        var cubit=SignUpCubit();
        return ListView(
          padding: EdgeInsets.only(
            top: 7.h,
            left: 3.h,
            right: 3.h,
          ),
          children: [
            CustomText(
              text: Strings.register,
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
              text: Strings.name,
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
            ),
            SizedBox(height: 1.h,),
            CustomTextField(
                controller: cubit.nameController,
                keyboardType: TextInputType.name,
                hintText: Strings.nameHint),
            SizedBox(height: 3.h,),
            CustomText(
              text: Strings.employeeId,
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
            ),
            SizedBox(height: 1.h,),
            CustomTextField(
              controller: cubit.employeeIdController,
              keyboardType: TextInputType.number,
              hintText: Strings.employeeIdHint,


            ),

            SizedBox(height: 3.h,),
            CustomText(
              text: Strings.department,
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
            ),
            SizedBox(height: 1.h,),
            CustomTextField(
              controller: cubit.departmentController,
              keyboardType: TextInputType.text,
              hintText: Strings.departmentHint,


            ),
            SizedBox(height: 3.h,),
            CustomText(
              text: Strings.department,
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
            ),

            SizedBox(height: 4.h,),
            CustomButton(
              onPressed: (){},
                backGroundColor: ColorManager.primary,
                textColor: ColorManager.white,
                text: Strings.register,
              fontSize: 16.sp,
            ),
            SizedBox(height: 3.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomText(
                  text: Strings.youHaveAcc,
                  fontSize: 11.sp,
                  fontWeight: FontWeight.w600,
                ),
                GestureDetector(
                  onTap: (){
                    GoRouter.of(context).push(AppRouter.rLogin);
                  },
                  child: CustomText(
                    text: Strings.login,
                    fontSize: 12.sp,
                    color: ColorManager.primary,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),

          ],
        );
      },
    );
  }
}
