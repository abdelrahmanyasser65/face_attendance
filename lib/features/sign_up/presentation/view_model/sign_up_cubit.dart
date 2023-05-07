
import 'dart:io';

import 'package:face_attendance/core/app_constants.dart';
import 'package:face_attendance/core/resours/colors.dart';
import 'package:face_attendance/core/widgets/custom_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
part 'sign_up_state.dart';


class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit() : super(SignUpInitial());
  String position='';
   TextEditingController nameController=TextEditingController();
   TextEditingController employeeIdController=TextEditingController();
   TextEditingController departmentController=TextEditingController();
  TextEditingController positionController=TextEditingController();
 void positionName(val){
   positionController.text=val;
   emit(PositionNameState());
 }


}
