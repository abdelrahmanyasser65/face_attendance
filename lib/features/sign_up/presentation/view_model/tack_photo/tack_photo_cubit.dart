
import 'dart:io';

import 'package:face_attendance/core/app_constants.dart';
import 'package:face_attendance/core/resours/colors.dart';
import 'package:face_attendance/core/widgets/custom_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
part 'tack_photo_state.dart';


class TackCubit extends Cubit<TackState> {
  TackCubit() : super(TackInitialState());


File selectImage=File('');
 bool imageSelected=false;
 Future pickImage(BuildContext context)async{
   try{
     final image=await ImagePicker().pickImage(source: ImageSource.camera);
     if(image==null) return;
     selectImage=File(image.path);
     imageSelected=true;
     emit(PickImageSuccess());
   }on PlatformException catch(e){
     customToast(
       color: Colors.red,
       text: "Failed to pick image:$e"
     );
     emit(PickImageError());
   }
 }

  Future selectedImage(BuildContext context)async{
    try{
      final image=await ImagePicker().pickImage(source: ImageSource.gallery);
      if(image==null) return;
      selectImage=File(image.path);
      imageSelected=true;
      emit(PickImageSuccess());
    }on PlatformException catch(e){
      customToast(
          color: Colors.red,
          text: "Failed to pick image:$e"
      );
      emit(PickImageError());
    }
  }



}
