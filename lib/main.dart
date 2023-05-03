import 'package:face_attendance/app/app.dart';
import 'package:face_attendance/core/helpers/cache_helper.dart';
import 'package:face_attendance/core/helpers/dio_helper.dart';
import 'package:flutter/material.dart';
void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  DioHelper.init();
  await CacheHelper.init();
  runApp(const FaceAttendance());
}