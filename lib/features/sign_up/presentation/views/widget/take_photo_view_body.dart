import 'dart:io';

import 'package:face_attendance/core/app_constants.dart';
import 'package:face_attendance/core/resours/strings.dart';
import 'package:face_attendance/core/widgets/custom_button.dart';
import 'package:face_attendance/core/widgets/custom_text.dart';
import 'package:face_attendance/features/sign_up/presentation/view_model/tack_photo/tack_photo_cubit.dart';
import 'package:face_attendance/features/sign_up/presentation/views/widget/model_sheet_photo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:sizer/sizer.dart';

import '../../../../../core/resours/colors.dart';

class TakePhotoViewBody extends StatelessWidget {
  const TakePhotoViewBody({Key? key, required this.cubit, }) : super(key: key);
  final TackCubit cubit;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<TackCubit, TackState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
         var cubit2=BlocProvider.of<TackCubit>(context);
        return ListView(
          padding: EdgeInsets.only(top: 10.h, left: 3.h, right: 3.h),
          children: [
            CustomText(
              textAlign: TextAlign.center,
              text: Strings.takeAPhoto,
              fontWeight: FontWeight.bold,
              color: ColorManager.primary,
              fontSize: 22.sp,
            ),
            SizedBox(
              height: 5.h,
            ),
            CustomText(
              text: Strings.takeYourFace,
              fontSize: 13.sp,
              color: Colors.grey.shade700,
              fontWeight: FontWeight.w500,
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 5.h, horizontal: 2.h),
              height: 35.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                      width: 0.2.h, color: ColorManager.primary)),
              child: cubit2.selectImage.path==''
                  ? GestureDetector(
                onTap: () {
                  showModalBottomSheet(context: context,
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                          )
                      ),
                      builder: (context) {
                        return ModelSheetPhoto(cubit: cubit2);
                      });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.add,
                      color: ColorManager.primary,
                      size: 5.h,
                    ),
                    SizedBox(
                      height: 1.5.h,
                    ),
                    CustomText(
                      text: Strings.addPhoto,
                      color: ColorManager.primary,
                      fontWeight: FontWeight.bold,
                      fontSize: 15.sp,
                    )
                  ],
                ),
              )
                  :
              BlocBuilder<TackCubit, TackState>(
                builder: (context, state) {
                  return ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.file(
                      cubit2.selectImage,
                      fit: BoxFit.fill,
                    ),
                  );
                },
              ),
            ),

            SizedBox(
              height: 3.h,
            ),
            Row(
              children: [
                Expanded(
                  child: CustomButton(
                      buttonStyle: TextButton.styleFrom(
                          backgroundColor: ColorManager.white,
                          shape: RoundedRectangleBorder(
                              side: BorderSide(
                                  width: 0.2.h, color: ColorManager.primary),
                              borderRadius: BorderRadius.circular(15))),
                      backGroundColor: ColorManager.white,
                      fontSize: 14.sp,
                      onPressed: () {
                        GoRouter.of(context).pop();
                      },
                      textColor: ColorManager.primary,
                      text: Strings.back),
                ),
                SizedBox(
                  width: 4.h,
                ),
                Expanded(
                  child: CustomButton(
                    onPressed: () {


                    },
                    backGroundColor: ColorManager.primary,
                    textColor: ColorManager.white,
                    text: Strings.register,
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
