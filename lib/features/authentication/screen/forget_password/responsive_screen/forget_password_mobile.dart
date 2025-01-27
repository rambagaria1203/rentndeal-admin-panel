import 'package:flutter/material.dart';
import 'package:rentndeal_admin_panel/constants/sizes.dart';
import 'package:rentndeal_admin_panel/features/authentication/screen/forget_password/widgets/header_and_form.dart';

class ForgetPasswordMobile extends StatelessWidget {
  const ForgetPasswordMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(CSizes.defaultSpace),
          child: HeaderAndForm(),
        ),
      ),
    );
  }
}