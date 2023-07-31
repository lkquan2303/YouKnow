import 'package:get/get.dart';

import '../../auth/auth_controller.dart';

class SignUpBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AuthController>(
        () => AuthController(apiRepository: Get.find()));
  }
}
