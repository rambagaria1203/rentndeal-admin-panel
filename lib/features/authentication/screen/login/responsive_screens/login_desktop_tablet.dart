import 'package:flutter/material.dart';
import 'package:rentndeal_admin_panel/features/authentication/screen/login/widgets/login_form.dart';
import 'package:rentndeal_admin_panel/features/authentication/screen/login/widgets/login_header.dart';
import 'package:rentndeal_admin_panel/features/common/layouts/templates/login_template.dart';

class LoginScreenDesktopTablet extends StatelessWidget {
  const LoginScreenDesktopTablet({super.key});

  @override
  Widget build(BuildContext context) {
    return const LoginTemplate(
      child: Column(
        children: [

          // header
          LoginHeader(),

          // Form
          LoginForm(),
        ],
      )
    );
  }
}



