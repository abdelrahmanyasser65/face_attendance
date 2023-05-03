import 'package:face_attendance/core/end_points.dart';
import 'package:face_attendance/core/helpers/dio_helper.dart';
import 'package:face_attendance/features/login/data/models/LoginModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
LoginModel ?loginModel;
  Future postLogin(context) async {
    var json = {
      'email': emailController.text,
      'password': passwordController.text
    };
    emit(LoginLoadingState());
    DioHelper.postData(url: EndPoints.loginEndPoint,
        data: json).then((value){
          if(value.statusCode==200){
            loginModel=LoginModel.fromJson(value.data);
            buildto
          }
    }).catchError((e){});
  }
}
