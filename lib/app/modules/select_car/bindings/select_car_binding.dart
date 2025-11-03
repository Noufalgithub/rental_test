import 'package:get/get.dart';

import '../controllers/select_car_controller.dart';

class SelectCarBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SelectCarController>(
      () => SelectCarController(),
    );
  }
}
