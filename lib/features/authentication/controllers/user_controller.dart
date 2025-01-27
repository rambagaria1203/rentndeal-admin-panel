import 'package:get/get.dart';
import 'package:rentndeal_admin_panel/backend/models/user_model.dart';
import 'package:rentndeal_admin_panel/backend/repositories/user_repository.dart';
import 'package:rentndeal_admin_panel/features/common/loaders/loaders.dart';

class UserController extends GetxController {
  static UserController get instance => Get.find();

  RxBool loading = false.obs;
  Rx<UserModel> user = UserModel.empty().obs;

  final userRepository = Get.put(UserRepository());


  @override
  void onInit() {
    fetchUserDetails();
    super.onInit();
  }

  // Fetch user details from the repository
  Future<UserModel> fetchUserDetails() async {
    try {
      loading.value = true;
      final user = await UserRepository.instance.fetchAdminDetails();
      this.user.value = user;
      loading.value = false;
      return user;

    } catch (e) {
      loading.value = false;
      Loaders.errorSnackBar(title: 'Something went wrong.', message: e.toString());
      return UserModel.empty();
    }
  }
}