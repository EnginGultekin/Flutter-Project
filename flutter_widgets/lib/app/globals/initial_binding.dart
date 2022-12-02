import 'package:flutter_widgets/app/modules/main_modules/main.dart';
import 'package:get/get.dart';

class InitialBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(MainController());
  }
}
