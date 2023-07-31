import 'package:get/get.dart';

import 'me_controller.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MeController>(() => MeController(apiRepository: Get.find()));
  }
}
