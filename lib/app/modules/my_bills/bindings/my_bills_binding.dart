import 'package:get/get.dart';

import '../controllers/my_bills_controller.dart';

class MyBillsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MyBillsController>(
      () => MyBillsController(),
    );
  }
}
