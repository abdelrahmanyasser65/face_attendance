import 'package:face_attendance/core/app_router.dart';
import 'package:face_attendance/features/login/presentation/view_model/login_cubit.dart';
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
            )
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
