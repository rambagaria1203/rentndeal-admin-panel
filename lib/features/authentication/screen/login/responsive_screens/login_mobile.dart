import 'package:flutter/material.dart';
import 'package:rentndeal_admin_panel/constants/sizes.dart';
import 'package:rentndeal_admin_panel/features/authentication/screen/login/widgets/login_form.dart';
import 'package:rentndeal_admin_panel/features/authentication/screen/login/widgets/login_header.dart';

class LoginScreenMobile extends StatelessWidget {
  const LoginScreenMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(CSizes.defaultSpace),
          child: Column(
            children: [
              // hEADER
              LoginHeader(),

              // fORM
              LoginForm(),
            ],
          ),
          ),
      ),
    );
  }
}