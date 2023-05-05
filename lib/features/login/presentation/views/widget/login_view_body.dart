import 'package:face_attendance/core/resours/colors.dart';
import 'package:face_attendance/core/resours/strings.dart';
import 'package:face_attendance/core/widgets/custom_button.dart';
import 'package:face_attendance/core/widgets/custom_form.dart';
import 'package:face_attendance/core/widgets/custom_text.dart';
import 'package:face_attendance/core/widgets/custom_toast.dart';
import 'package:face_attendance/core/widgets/logo_image.dart';
import 'package:face_attendance/features/login/presentation/view_model/login_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:sizer/sizer.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginCubit, LoginState>(
      builder: (context, state) {
        var cubit = LoginCubit();
        return ModalProgressHUD(
            inAsyncCall: state is LoginLoadingState,
            child: ListView(
              padding: EdgeInsets.only(
                top: 7.h,
                left: 3.h,
                right: 3.h,
              ),
              children: [
                CustomText(
                  text: Strings.adminLogin,
                  fontWeight: FontWeight.bold,
                  fontSize: 22.sp,
                  color: ColorManager.primary,
                ),
                SizedBox(
                  height: 2.h,
                ),
                const LogoImage(),
                SizedBox(
                  height: 5.h,
                ),
                CustomText(
                  text: Strings.email,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                ),
                SizedBox(
                  height: 2.h,
                ),
                CustomTextField(
                    controller: cubit.emailController,
                    keyboardType: TextInputType.emailAddress,
                    hintText: Strings.emailHint),
                SizedBox(
                  height: 5.h,
                ),
                CustomText(
                  text: Strings.password,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                ),
                SizedBox(
                  height: 2.h,
                ),
                CustomTextField(
                  obscureText: true,
                  controller: cubit.passwordController,
                  keyboardType: TextInputType.visiblePassword,
                  hintText: Strings.passwordHint,
                ),
                SizedBox(
                  height: 2.h,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: GestureDetector(
                    child: CustomText(
                      text: Strings.forgotPas,
                      color: ColorManager.primary,
                      fontWeight: FontWeight.bold,
                      fontSize: 12.sp,
                    ),
                    onTap: () {},
                  ),
                ),
                SizedBox(
                  height: 4.h,
                ),
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
                          cubit.validationLogin(context);
                        },
                        backGroundColor: ColorManager.primary,
                        textColor: ColorManager.white,
                        text: Strings.login,
                        fontSize: 16.sp,
                      ),
                    ),
                  ],
                ),
              ],
            ));
      },
    );
  }
}
