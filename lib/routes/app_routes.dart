import 'package:get/get_navigation/get_navigation.dart';
import 'package:rentndeal_admin_panel/features/authentication/screen/forget_password/forget_password.dart';
import 'package:rentndeal_admin_panel/features/authentication/screen/login/login.dart';
import 'package:rentndeal_admin_panel/features/authentication/screen/reset_password/reset_password.dart';
import 'package:rentndeal_admin_panel/features/dashboard/screens/dashboard.dart';
import 'package:rentndeal_admin_panel/features/media/screens/media_scree.dart';
import 'package:rentndeal_admin_panel/routes/routes.dart';
import 'package:rentndeal_admin_panel/routes/routes_middleware.dart';

class AppRoutes {
  static final List<GetPage> pages = [
    GetPage(name: Routes.login, page: () => const LoginScreen()),
    GetPage(name: Routes.forgetPassword, page: () => const ForgetPasswordScreen()),
    GetPage(name: Routes.resetPassword, page: ()=> const ResetPasswordScreen()),
    GetPage(name: Routes.dashboard, page: () => const DashboardScreen(), middlewares: [RouteMiddleware()]),
    GetPage(name: Routes.media, page: () => const MediaScreen(), middlewares: [RouteMiddleware()])
  ];
}