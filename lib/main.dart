import 'package:face_attendance/app/app.dart';
import 'package:face_attendance/core/helpers/dio_helper.dart';
import 'package:flutter/material.dart';
void main(){
  WidgetsFlutterBinding.ensureInitialized();
  DioHelper.init();
  runApp(const FaceAttendance());
}