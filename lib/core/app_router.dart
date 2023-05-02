import 'package:face_attendance/features/login/presentation/views/login_view.dart';
import 'package:face_attendance/features/sign_up/presentation/views/sign_up_view.dart';
import 'package:face_attendance/features/splash/presentation/splash_view.dart';
import 'package:go_router/go_router.dart';
abstract class AppRouter{
  static const rLogin="/loginView";
  static const rSignUp="/signUpView";
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
    ],
  );
}