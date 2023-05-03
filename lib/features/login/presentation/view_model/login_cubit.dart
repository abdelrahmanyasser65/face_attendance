import 'package:face_attendance/core/app_constants.dart';
import 'package:face_attendance/core/app_router.dart';
import 'package:face_attendance/core/end_points.dart';
import 'package:face_attendance/core/helpers/cache_helper.dart';
import 'package:face_attendance/core/helpers/dio_helper.dart';
import 'package:face_attendance/core/resours/colors.dart';
import 'package:face_attendance/core/widgets/custom_toast.dart';
import 'package:face_attendance/features/login/data/models/LoginModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

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
    DioHelper.postData(
        url: EndPoints.loginEndPoint,
        data: json).then((value){
          if(value.statusCode==200){
            loginModel=LoginModel.fromJson(value.data);
            customToast(
              text: loginModel!.status,
              color: Colors.green
            );
            CacheHelper.put(key: "token", value: loginModel!.token).then((value) {
              AppConstants.token=loginModel!.token!;
            });
            GoRouter.of(context).pushReplacement(AppRouter.rHome);
            emailController.text='';
            passwordController.text='';
          }
          emit(LoginSuccessState());
    }).catchError((e){
      customToast(
        text: "Incorrect Email or Password",
        color: Colors.red
      );
      emit(LoginErrorState(e.toString()));
    });
  }
  void validationLogin(context){
    if(emailController.text.isEmpty){
      customToast(
          text: "Enter Your Email",
          color: Colors.red
      );
    }
    else if(passwordController.text.length<8){
      customToast(
          text: "Short Password",
          color: Colors.red
      );
    }
    else{
      postLogin(context);
    }

  }
}
