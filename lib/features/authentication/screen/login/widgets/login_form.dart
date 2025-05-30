import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:rentndeal_admin_panel/constants/colors.dart';
import 'package:rentndeal_admin_panel/constants/sizes.dart';
import 'package:rentndeal_admin_panel/constants/text_string.dart';
import 'package:rentndeal_admin_panel/features/authentication/controllers/login_controller.dart';
import 'package:rentndeal_admin_panel/helper_function/validator/validation.dart';
import 'package:rentndeal_admin_panel/routes/routes.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LoginController());
    return Form(
      key: controller.loginFormKey,
      child: 
      Padding(padding: const EdgeInsets.symmetric(vertical: CSizes.spaceBtwSections),
      child: Column(
        children: [
          // Email
          TextFormField(
            controller: controller.email,
            validator: Validator.validateEmail,
            decoration: const InputDecoration(prefixIcon: Icon(Iconsax.direct_right), labelText: CTexts.email),
          ),
          const SizedBox(height: CSizes.spaceBtwInputFields),
    
          // Password
          Obx(
            () => TextFormField(
              controller: controller.password,
              validator: (value) => Validator.validateEmptyText('Password', value),
              obscureText: controller.hidePassword.value,
              decoration: InputDecoration(
                labelText: CTexts.password,
                prefixIcon: const Icon(Iconsax.password_check),
                suffixIcon: IconButton(icon: Icon(controller.hidePassword.value ? Iconsax.eye_slash : Iconsax.eye), onPressed: () => controller.hidePassword.value = !controller.hidePassword.value),
              ),
            ),
          ),
          const SizedBox(height: CSizes.spaceBtwInputFields / 2),
    
    
          // Remeber Me & Forget Password
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Remeber Me
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Obx(() => Checkbox(value: controller.rememberMe.value, onChanged: (value) => controller.rememberMe.value = value!)),
                  const Text(CTexts.rememberMe),
                ],
              ),
    
              // Forget Password
              TextButton(onPressed: ()=> Get.toNamed(Routes.forgetPassword), child: const Text(CTexts.forgotPasswordTitle)),
            ]
          ),
          const SizedBox(height: CSizes.spaceBtwSections),
    
          // Sigin Button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(onPressed: () => controller.emailAndPasswordSignIn(), style: ElevatedButton.styleFrom(backgroundColor: CColors.primary), child: const Text(CTexts.signIn, style: TextStyle(color: whiteColor),),),
          )
        ]
      )
      
      )
      );
  }
}