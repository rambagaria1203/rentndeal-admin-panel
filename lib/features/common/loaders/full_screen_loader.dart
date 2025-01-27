import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rentndeal_admin_panel/constants/colors.dart';
import 'package:rentndeal_admin_panel/features/common/loaders/animation_loader.dart';

class FullScreenLoader {

  static void openLoadingDialog(String text, String animation) {
    showDialog(
      context: Get.overlayContext!, 
      barrierDismissible: false,
      builder: (_) => PopScope(
        canPop: false,
        child: Container(
          color: CColors.white,
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: [
              const SizedBox(height: 250),
              AnimationLoaderWidget(text: text, animation: animation),
            ],
          ),
        )
      )
    );
  }


  // static void popUpCircular() {
  //   Get.defaultDialog(
  //     title: '',
  //     onWillPop: () async => false,
  //     content: const CircularLoader(),
  //     backgroundColor: Colors.transparent
  //   );
  // }


  // Stop the current open Loading dialog
  static void stopLoading() {
    Navigator.of(Get.overlayContext!).pop();
  }

}