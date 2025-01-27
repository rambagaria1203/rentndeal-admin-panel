import 'package:flutter/material.dart';
import 'package:rentndeal_admin_panel/features/authentication/screen/forget_password/responsive_screen/forget_password_desktop_tablet.dart';
import 'package:rentndeal_admin_panel/features/authentication/screen/forget_password/responsive_screen/forget_password_mobile.dart';
import 'package:rentndeal_admin_panel/features/common/layouts/templates/site_layout.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SiteTemplate(useLayout: false, desktop: ForgetPasswordDesktopTablet(), mobile: ForgetPasswordMobile(),);
  }
}