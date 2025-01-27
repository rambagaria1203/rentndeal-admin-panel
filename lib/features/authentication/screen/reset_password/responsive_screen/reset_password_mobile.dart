import 'package:flutter/material.dart';
import 'package:rentndeal_admin_panel/constants/sizes.dart';
import 'package:rentndeal_admin_panel/features/authentication/screen/reset_password/widgets/reset_password_widget.dart';

class ResetPasswordMobile extends StatelessWidget {
  const ResetPasswordMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.all(CSizes.defaultSpace),
        child: ResetPasswordWidget(),
        ),

      ),
    );
  }
}