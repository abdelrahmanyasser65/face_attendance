import 'package:face_attendance/features/login/presentation/views/login_view.dart';
import 'package:face_attendance/features/sign_up/presentation/views/sign_up_view.dart';
import 'package:face_attendance/features/sign_up/presentation/views/take_photo_view.dart';
import 'package:face_attendance/features/splash/presentation/select_login.dart';
import 'package:face_attendance/features/splash/presentation/splash_view.dart';
import 'package:go_router/go_router.dart';
abstract class AppRouter{
  static const rLogin="/loginView";
  static const rSignUp="/signUpView";
  static const rHome="/homeView";
  static const rSelect='/selectView';
  static const rTakePhoto='/takePhotoView';
  static final router=GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context,state)=>const SplashView(),
      ),
      GoRoute(
        path: AppRouter.rLogin,
        builder: (context,state)=>const LoginView(),
      ),
      GoRoute(
        path: AppRouter.rSignUp,
        builder: (context,state)=>const SignUpView(),
      ),
      GoRoute(
        path: AppRouter.rHome,
        builder: (context,state)=>const SplashView(),
      ),
      GoRoute(
        path: AppRouter.rSelect,
        builder: (context,state)=>const SelectLoginView(),
      ),
      GoRoute(
        path: AppRouter.rTakePhoto,
        builder: (context,state)=>const TakePhotoView(

        ),
      ),
    ],
  );
}