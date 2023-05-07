import 'package:face_attendance/features/sign_up/presentation/view_model/tack_photo/tack_photo_cubit.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sizer/sizer.dart';

class ModelSheetPhoto extends StatelessWidget {
  const ModelSheetPhoto({Key? key, required this.cubit, }) : super(key: key);
  final TackCubit cubit;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 15.h,
      color: Colors.blueGrey,
      padding: EdgeInsets.only(
        top: 2.h,
        left: 2.h,
        right: 2.h,

      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: (){
              cubit.pickImage(context);
              GoRouter.of(context).pop();
            },
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 40,
                  width: 40,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Colors.black45),
                  child: const Icon(
                    Icons.camera_alt,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  "Tack Photo",
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          InkWell(

            onTap: (){
              cubit.selectedImage(context);
              GoRouter.of(context).pop();
            },
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 40,
                  width: 40,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Colors.black45),
                  child: const Icon(
                    Icons.file_copy,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  "Upload Photo",
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
          )

        ],
      ),
    );
  }
}
