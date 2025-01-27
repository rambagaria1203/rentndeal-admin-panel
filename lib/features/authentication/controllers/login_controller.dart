import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:rentndeal_admin_panel/backend/models/user_model.dart';
import 'package:rentndeal_admin_panel/backend/repositories/authentication_repository.dart';
import 'package:rentndeal_admin_panel/backend/repositories/user_repository.dart';
import 'package:rentndeal_admin_panel/constants/enums.dart';
import 'package:rentndeal_admin_panel/constants/images.dart';
import 'package:rentndeal_admin_panel/features/authentication/controllers/user_controller.dart';
import 'package:rentndeal_admin_panel/features/common/loaders/full_screen_loader.dart';
import 'package:rentndeal_admin_panel/features/common/loaders/loaders.dart';
import 'package:rentndeal_admin_panel/helper_function/general_functions/network_manager.dart';

class LoginController extends GetxController {
  static LoginController get instance => Get.find();

  final hidePassword = true.obs;
  final rememberMe = false.obs;
  final localStorage = GetStorage();

  final email = TextEditingController();
  final password = TextEditingController();
  final loginFormKey = GlobalKey<FormState>();

  @override
  void onInit() {
    email.text = localStorage.read('REMEMBER_ME_EMAIL') ?? '';
    password.text = localStorage.read('REMEMBER_ME_PASSWORD') ?? '';
    super.onInit();
  }

  // Handle Email & Password sign in Progress
  Future<void> emailAndPasswordSignIn() async {
    try {
      // Starting Loader
      FullScreenLoader.openLoadingDialog('Logging you in.....', CImages.imgDataLoading);

    // check Internet Connectivity
    final isConnected = await NetworkManager.instance.isConnected();
    if (!isConnected) {
      FullScreenLoader.stopLoading();
      return;
    }
    // Form Validation
    if (!loginFormKey.currentState!.validate()) {
      FullScreenLoader.stopLoading();
      return;
    }
    // Save Data is Remeber Me is selected
    if (rememberMe.value) {
      localStorage.write('REMEMBER_ME_EMAIL', email.text.trim());
      localStorage.write('REMEMBER_ME_PASSWORD', password.text.trim());
    }
    await AuthenticationRepository.instance.loginWithEmailAndPassword(email.text.trim(), password.text.trim());
    final user = await UserController.instance.fetchUserDetails();

    // Remove Loader
    FullScreenLoader.stopLoading();

    // If User is not admin, logout and return
    if (user.role != AppRole.admin) {
      await AuthenticationRepository.instance.logout();
      Loaders.errorSnackBar(title: 'Not Authorized', message: 'You are not authorized or do have access. Contact Admin');
    } else {
      AuthenticationRepository.instance.screenRedirect();
    }

    } catch (e) {
      FullScreenLoader.stopLoading();
      Loaders.errorSnackBar(title: 'Error', message: e.toString());

    }
  }
  
  
  Future<void> registerAdmin() async {
    try {
      // Start Loading
    FullScreenLoader.openLoadingDialog('Registering Admin Account.....', CImages.imgDataLoading);

    // check Internet Connectivity
    final isConnected = await NetworkManager.instance.isConnected();
    if (!isConnected) {
      FullScreenLoader.stopLoading();
      return;
    }

    // Register user using Email & Password Authentication
    await AuthenticationRepository.instance.registerWithEmailAndPassword(email.text.trim(), password.text.trim());

    final userRepository = Get.put(UserRepository());
    await userRepository.createUser(
      UserModel(
        id: AuthenticationRepository.instance.authUser!.uid,
        firstName: 'King',
        lastName: 'Kong',
        email: email.text.trim(),
        role: AppRole.admin,
        location: 'Jaipur Rajasthan',
        createdAt: DateTime.now(),
      )
    );

    // Remove Loader
    FullScreenLoader.stopLoading();

    AuthenticationRepository.instance.screenRedirect();

    } catch (e) {
      FullScreenLoader.stopLoading();
      Loaders.errorSnackBar(title: 'Oh Snap', message: e.toString());
    }

  }

}