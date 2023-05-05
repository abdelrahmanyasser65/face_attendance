import 'package:face_attendance/core/resours/colors.dart';
import 'package:face_attendance/features/splash/presentation/widget/select_login_body.dart';
import 'package:flutter/material.dart';
class SelectLoginView extends StatelessWidget {
  const SelectLoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.white,
      body:const SelectLoginViewBody(),
    );
  }
}
