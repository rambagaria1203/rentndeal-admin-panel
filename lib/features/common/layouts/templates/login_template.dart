import 'package:flutter/material.dart';
import 'package:rentndeal_admin_panel/constants/sizes.dart';

class LoginTemplate extends StatelessWidget {
  const LoginTemplate({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 550,
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.only(top: CSizes.appBarHeight, left: CSizes.defaultSpace, bottom: CSizes.defaultSpace, right: CSizes.defaultSpace),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(CSizes.cardRadiusLg), color: Colors.white),
            child: child,
          )
        )
      )
    );
  }
}