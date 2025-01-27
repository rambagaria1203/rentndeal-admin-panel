import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:rentndeal_admin_panel/constants/colors.dart';

class Loaders {

  static hideSnackBar() => ScaffoldMessenger.of(Get.context!).hideCurrentSnackBar();

  static customToast({required message}) {
    ScaffoldMessenger.of(Get.context!).showSnackBar(
      SnackBar(
        width: 500,
        elevation: 0,
        behavior: SnackBarBehavior.floating,
        duration: const Duration(seconds: 3),
        backgroundColor: Colors.transparent,
        content: Container(
          padding: const EdgeInsets.all(12.0),
          margin: const EdgeInsets.symmetric(horizontal: 30),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: CColors.grey
          ),
          child: Center(child: Text(message, style: Theme.of(Get.context!).textTheme.labelLarge)),
        ),
      )
    );
  }



  static successSnackBar({required title, message = '', duration =3}) {
    Get.snackbar(
      title, 
      message,
      maxWidth: 600,
      isDismissible: true,
      shouldIconPulse: true,
      colorText: Colors.white,
      backgroundColor: CColors.primary,
      snackPosition: SnackPosition.BOTTOM,
      duration: Duration(seconds: duration), 
      margin: const EdgeInsets.all(10),
      icon: const Icon(Iconsax.check, color: CColors.white),
    );
  }


  static warningSnackBar({required title, message = ''}) {
    Get.snackbar(
      title,
      message,
      maxWidth: 600,
      isDismissible: true,
      shouldIconPulse: true,
      colorText: CColors.white,
      backgroundColor: Colors.orange,
      snackPosition: SnackPosition.BOTTOM,
      duration: const Duration(seconds: 3),
      margin: const EdgeInsets.all(20),
      icon: const Icon(Iconsax.warning_2, color: CColors.white),
    );
  }

  static errorSnackBar({required title, message = ''}) {
    Get.snackbar(
      title,
      message,
      maxWidth: 600,
      isDismissible: true,
      shouldIconPulse: true,
      colorText: CColors.white,
      backgroundColor: CColors.error,
      snackPosition: SnackPosition.BOTTOM,
      duration: const Duration(seconds: 3),
      margin: const EdgeInsets.all(20),
      icon: const Icon(Iconsax.close_circle, color: CColors.white),
    );
  }
}