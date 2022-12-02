import 'package:get/get.dart';
import 'personel.dart';

class PersonalBinding extends Bindings {

  @override
  void dependencies() {
    Get.put<PersonalController>(PersonalController());
  }

}

