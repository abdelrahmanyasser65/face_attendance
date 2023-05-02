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
        builder: (context,state)=>const SplashView(),
      ),
    ],
  );
}