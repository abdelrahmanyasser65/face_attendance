import 'package:face_attendance/core/resours/colors.dart';
import 'package:face_attendance/features/sign_up/presentation/view_model/sign_up_cubit.dart';
import 'package:face_attendance/features/sign_up/presentation/view_model/tack_photo/tack_photo_cubit.dart';
import 'package:face_attendance/features/sign_up/presentation/views/widget/take_photo_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TakePhotoView extends StatelessWidget {
  const TakePhotoView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TackCubit, TackState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: ColorManager.white,
          body:  TakePhotoViewBody(
            cubit:TackCubit()
          ),
        );
      },
    );
  }
}
