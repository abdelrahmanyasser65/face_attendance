
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit() : super(SignUpInitial());
  String position='';
   TextEditingController nameController=TextEditingController();
   TextEditingController employeeIdController=TextEditingController();
   TextEditingController departmentController=TextEditingController();
  TextEditingController positionController=TextEditingController();
 void positionName(val){
   position=val;
   emit(PositionNameState());
 }

}
