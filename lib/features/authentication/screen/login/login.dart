import 'package:flutter/material.dart';
import 'package:rentndeal_admin_panel/features/authentication/screen/login/responsive_screens/login_desktop_tablet.dart';
import 'package:rentndeal_admin_panel/features/authentication/screen/login/responsive_screens/login_mobile.dart';
import 'package:rentndeal_admin_panel/features/common/layouts/templates/site_layout.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SiteTemplate(useLayout: false, desktop: LoginScreenDesktopTablet(), mobile: LoginScreenMobile());
  }
}