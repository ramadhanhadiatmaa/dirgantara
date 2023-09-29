import 'package:get/get.dart';

import '../controllers/getstarted_controller.dart';

class GetstartedBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GetstartedController>(
      () => GetstartedController(),
    );
  }
}
