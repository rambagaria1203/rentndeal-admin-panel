import 'package:flutter/material.dart';
import 'package:rentndeal_admin_panel/features/authentication/screen/forget_password/widgets/header_and_form.dart';
import 'package:rentndeal_admin_panel/features/common/layouts/templates/login_template.dart';


class ForgetPasswordDesktopTablet extends StatelessWidget {
  const ForgetPasswordDesktopTablet({super.key});

  @override
  Widget build(BuildContext context) {
    return const LoginTemplate(
      child: HeaderAndForm()
    );
  }
}

