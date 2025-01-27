import 'package:flutter/material.dart';
import 'package:rentndeal_admin_panel/features/authentication/screen/reset_password/responsive_screen/reset_password_desktop_tablet.dart';
import 'package:rentndeal_admin_panel/features/authentication/screen/reset_password/responsive_screen/reset_password_mobile.dart';
import 'package:rentndeal_admin_panel/features/common/layouts/templates/site_layout.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SiteTemplate(useLayout: false, desktop: ResetPasswordDesktopTabletScreen(), mobile: ResetPasswordMobile());
  }
}