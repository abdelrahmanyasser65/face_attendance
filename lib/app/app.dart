import 'package:face_attendance/core/app_router.dart';
import 'package:face_attendance/features/login/presentation/view_model/login_cubit.dart';
import 'package:face_attendance/features/sign_up/presentation/view_model/sign_up_cubit.dart';
import 'package:face_attendance/features/sign_up/presentation/view_model/tack_photo/tack_photo_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';
class FaceAttendance extends StatelessWidget {
  const FaceAttendance({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context,s,d){
        return MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context)=>LoginCubit(),
            ),
            BlocProvider(
              create: (context)=>SignUpCubit(),
            ),
            BlocProvider(
              create: (context)=>TackCubit(),
            ),
          ],
          child: MaterialApp.router(
            routerConfig: AppRouter.router,
            debugShowCheckedModeBanner: false,

          ),
        );
      },
    );
  }
}
