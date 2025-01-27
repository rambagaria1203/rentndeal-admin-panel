import 'package:get/get.dart';
import 'package:rentndeal_admin_panel/features/authentication/controllers/user_controller.dart';
import 'package:rentndeal_admin_panel/helper_function/general_functions/network_manager.dart';

class GeneralBindings extends Bindings {
  @override
  void dependencies() {
    /// ---- Core
    Get.lazyPut(() => NetworkManager(), fenix: true);
    Get.lazyPut(() => UserController(), fenix: true);
  }
}