import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:rentndeal_admin_panel/features/authentication/screen/reset_password/widgets/reset_password_widget.dart';
import 'package:rentndeal_admin_panel/features/common/layouts/templates/login_template.dart';


class ResetPasswordDesktopTabletScreen extends StatelessWidget {
  const ResetPasswordDesktopTabletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const LoginTemplate(
      child: ResetPasswordWidget()
    );
  }
}

