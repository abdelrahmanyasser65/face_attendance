import 'package:face_attendance/core/app_constants.dart';
import 'package:face_attendance/core/resours/strings.dart';
import 'package:face_attendance/core/widgets/custom_text.dart';
import 'package:face_attendance/features/sign_up/presentation/view_model/sign_up_cubit.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../../../../core/resours/colors.dart';

class ShowModelBottomSheet extends StatelessWidget {
  ShowModelBottomSheet({Key? key, required this.cubit,}) : super(key: key);
final SignUpCubit cubit;
  final List positionTitle = [
    Strings.manager,
    Strings.teamLeader,
    Strings.projectLeader,
    Strings.departmentHint,
    Strings.employee
  ];

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 30.h,
      padding: EdgeInsets.only(
        top: 4.h,
        left: 3.h,
        right: 3.h,

      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: CustomText(

              text: Strings.positionHint,
              color: ColorManager.primary,
              fontWeight: FontWeight.bold,
              fontSize: 16.sp,
            ),
          ),
          SizedBox(height: 3.h,),
          SizedBox(

            height: 20.1.h,
            child: ListView.separated(
                padding: EdgeInsets.only(
                    bottom: 3.h
                ),
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      cubit.positionName(positionTitle[index]);
                      // setState(() {
                      //   AppConstants.position=positionTitle[index];
                      // });

                      Navigator.pop(context);
                    },
                    child: CustomText(
                      text: positionTitle[index],
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: 1.5.h
                    ),
                    child: const Divider(),
                  );
                },
                itemCount: positionTitle.length),
          )
        ],
      ),
    );
  }
}
