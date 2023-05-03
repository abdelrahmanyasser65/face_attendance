import 'package:face_attendance/core/resours/colors.dart';
import 'package:face_attendance/features/sign_up/presentation/views/widget/sign_up_view_body.dart';
import 'package:flutter/material.dart';
class SignUpView extends StatelessWidget {
  const SignUpView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: ColorManager.white,
      body:  SignViewBody(),
    );
  }
}
