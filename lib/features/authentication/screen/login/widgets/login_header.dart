import 'package:flutter/material.dart';
import 'package:rentndeal_admin_panel/constants/images.dart';
import 'package:rentndeal_admin_panel/constants/sizes.dart';
import 'package:rentndeal_admin_panel/constants/text_string.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Image(width: 100, height: 100, image: AssetImage(CImages.imgAppLogo),),
          const SizedBox(height: CSizes.spaceBtwSections),
          Text(CTexts.loginTitle, style: Theme.of(context).textTheme.headlineMedium),
          const SizedBox(height: CSizes.sm),
          Text(CTexts.loginSubTitle, style: Theme.of(context).textTheme.bodyMedium),
        ],
      ),
    );
  }
}