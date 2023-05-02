import 'package:face_attendance/core/resours/colors.dart';
import 'package:flutter/material.dart';

import 'widget/login_view_body.dart';
class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: ColorManager.white,
      body:  LoginViewBody(),
    );
  }
}
