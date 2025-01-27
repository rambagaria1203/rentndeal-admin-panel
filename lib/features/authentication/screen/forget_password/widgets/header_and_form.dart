import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:rentndeal_admin_panel/constants/colors.dart';
import 'package:rentndeal_admin_panel/constants/sizes.dart';
import 'package:rentndeal_admin_panel/constants/text_string.dart';
import 'package:rentndeal_admin_panel/routes/routes.dart';

class HeaderAndForm extends StatelessWidget {
  const HeaderAndForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
    
        // Header
        IconButton(onPressed: ()=> Get.back(), icon: const Icon(Iconsax.arrow_left_1_copy)),
        const SizedBox(height: CSizes.spaceBtwItems),
        Text(CTexts.forgotPasswordTitle, style: Theme.of(context).textTheme.headlineMedium,),
        const SizedBox(height: CSizes.spaceBtwItems),
        Text(CTexts.forgotPasswordSubTitle, style: Theme.of(context).textTheme.labelMedium),
        const SizedBox(height: CSizes.spaceBtwSections * 2),
    
        // Form
        Form(child: TextFormField(decoration: const InputDecoration(labelText: CTexts.email, prefixIcon: Icon(Iconsax.direct_right)),)),
        const SizedBox(height: CSizes.spaceBtwSections),
    
        // Submit Button
        SizedBox(width: double.infinity, child: ElevatedButton(onPressed: ()=> Get.toNamed(Routes.resetPassword, parameters:{'email':'ramkumarbagaria7@gmail.com'}), style: ElevatedButton.styleFrom(backgroundColor: CColors.primary), child: const Text('Submit', style: TextStyle(color: CColors.white),)),),
        const SizedBox(height: CSizes.spaceBtwSections * 2),
      ]
    );
  }
}