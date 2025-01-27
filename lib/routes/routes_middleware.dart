import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:rentndeal_admin_panel/backend/repositories/authentication_repository.dart';
import 'package:rentndeal_admin_panel/routes/routes.dart';


class RouteMiddleware extends GetMiddleware {
  @override
  RouteSettings? redirect(String? route) {
    return AuthenticationRepository.instance.isAuthenticated ? null : const RouteSettings(name: Routes.login);
  }
}