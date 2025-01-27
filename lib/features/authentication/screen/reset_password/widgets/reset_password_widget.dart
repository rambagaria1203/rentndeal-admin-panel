import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:rentndeal_admin_panel/constants/colors.dart';
import 'package:rentndeal_admin_panel/constants/images.dart';
import 'package:rentndeal_admin_panel/constants/sizes.dart';
import 'package:rentndeal_admin_panel/constants/text_string.dart';
import 'package:rentndeal_admin_panel/routes/routes.dart';

class ResetPasswordWidget extends StatelessWidget {
  const ResetPasswordWidget({super.key,});

  @override
  Widget build(BuildContext context) {
    final email = Get.parameters['email'] ?? '';
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        // header
        Row(children: [IconButton(onPressed: () => Get.offAllNamed(Routes.login), icon: const Icon(CupertinoIcons.clear))]),
        const SizedBox(height: CSizes.spaceBtwItems),
    
        // Image
        const Image(image: AssetImage(CImages.imgEmailDelivered), width: 300, height: 300),
        const SizedBox(height: CSizes.spaceBtwItems),
    
        // Title & Subtitle
        Text(CTexts.changeYourPasswordTitle, style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center),
        const SizedBox(height: CSizes.spaceBtwItems),
        Text(email, textAlign: TextAlign.center, style: Theme.of(context).textTheme.labelLarge),
        const SizedBox(height: CSizes.spaceBtwItems),
        Text(CTexts.changeYourPasswordSubTitle, textAlign: TextAlign.center, style: Theme.of(context).textTheme.labelMedium),
        const SizedBox(height: CSizes.spaceBtwItems),
    
        // Buttonss
        SizedBox(width: double.infinity, child: ElevatedButton(onPressed: () => Get.offAllNamed(Routes.login), style: ElevatedButton.styleFrom(backgroundColor: CColors.primary), child: const Text('Done', style: TextStyle(color: whiteColor),),),),
        const SizedBox(height: CSizes.spaceBtwItems),
        SizedBox(width: double.infinity, child: ElevatedButton(onPressed: (){}, style: ElevatedButton.styleFrom(backgroundColor: CColors.primary), child: const Text('Resent Email', style: TextStyle(color: whiteColor),),),)
      ]
    );
  }
}