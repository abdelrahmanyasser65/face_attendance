import 'package:face_attendance/core/app_constants.dart';
import 'package:face_attendance/core/resours/colors.dart';
import 'package:face_attendance/core/resours/strings.dart';
import 'package:face_attendance/core/widgets/custom_button.dart';
import 'package:face_attendance/core/widgets/custom_form.dart';
import 'package:face_attendance/core/widgets/custom_text.dart';
import 'package:face_attendance/features/sign_up/presentation/view_model/sign_up_cubit.dart';
import 'package:face_attendance/features/sign_up/presentation/views/widget/model_bottom_sheet_sign.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:sizer/sizer.dart';

import '../../../../../core/app_router.dart';
import '../../../../../core/resours/images.dart';


class SignViewBody extends StatelessWidget {
  const SignViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignUpCubit, SignUpState>(
      builder: (context, state) {
        var cubit=SignUpCubit();
        cubit.positionController.text=AppConstants.position;
        return ListView(
          padding: EdgeInsets.only(
            top: 7.h,
            left: 3.h,
            right: 3.h,
          ),
          children: [
            CustomText(
              text: Strings.registration,
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
              text: Strings.position,
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
            ),
            SizedBox(height: 1.h,),
            CustomTextField(

              controller: cubit.positionController,
              keyboardType: TextInputType.text,
              hintText: Strings.positionHint,

              onTap: (){

                FocusScope.of(context).requestFocus(FocusNode());
                showModalBottomSheet(context: context,
                    shape:const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      )
                    ),
                    builder: (context){
                  return   ShowModelBottomSheet(

                  );
                    }
                );

              },
            ),
            SizedBox(height: 4.h,),
            Row(
              children: [
                Expanded(
                  child: CustomButton(
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
                        GoRouter.of(context).pop();
                      },
                      textColor: ColorManager.primary,
                      text: Strings.back),
                ),
                SizedBox(width: 4.h,),
                Expanded(
                  child: CustomButton(
                    onPressed: () {
                      GoRouter.of(context).push(AppRouter.rTakePhoto);
                    },
                    backGroundColor: ColorManager.primary,
                    textColor: ColorManager.white,
                    text: Strings.next,
                    fontSize: 16.sp,
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
