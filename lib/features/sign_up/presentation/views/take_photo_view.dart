import 'package:face_attendance/core/resours/colors.dart';
import 'package:face_attendance/features/sign_up/presentation/views/widget/take_photo_view_body.dart';
import 'package:flutter/material.dart';
class TakePhotoView extends StatelessWidget {
  const TakePhotoView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.white,
      body:const TakePhotoViewBody(),
    );
  }
}
