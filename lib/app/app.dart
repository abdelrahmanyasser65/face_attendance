import 'package:face_attendance/core/app_router.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
class FaceAttendance extends StatelessWidget {
  const FaceAttendance({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context,s,d){
        return MaterialApp.router(
          routerConfig: AppRouter.router,
          debugShowCheckedModeBanner: false,

        );
      },
    );
  }
}
