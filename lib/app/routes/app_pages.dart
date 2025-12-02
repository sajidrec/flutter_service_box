import 'package:flutter_service_box/app/modules/login/views/login_page.dart';
import 'package:flutter_service_box/app/modules/signup/views/signup_page.dart';
import 'package:go_router/go_router.dart';
import '../modules/home/views/home_page.dart';
import 'app_routes.dart';

class AppPages {
  static final List<GoRoute> pages = [
    GoRoute(
      path: AppRoutes.homeRoute,
      builder: (context, state) {
        return HomePage();
      },
      routes: [],
    ),
    GoRoute(
      path: AppRoutes.loginRoute,
      builder: (context, state) {
        return LoginPage();
      },
      routes: [],
    ),
    GoRoute(
      path: AppRoutes.signupRoute,
      builder: (context, state) {
        return SignupPage();
      },
      routes: [],
    ),
  ];
}
