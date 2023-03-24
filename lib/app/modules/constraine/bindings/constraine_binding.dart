import 'package:get/get.dart';

import '../controllers/constraine_controller.dart';

class ConstraineBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ConstraineController>(
      () => ConstraineController(),
    );
  }
}
