import 'package:activity_app_with_getx/globals/constants.dart';
import 'package:get/get.dart';

import '../home/views/home_view.dart';

class SplashController extends GetxController {

  @override
  /// Ekran açıldıktan hemen sonra çalışan override fonksyonu
  void onReady() {
    /// Ekran açılınca splashDuration kadar bekleyip HomeScreen() sayfasına geçmemizi sağlayan fonsyon
    Future.delayed(Duration(milliseconds: Constants.splashDuration), () {
      Get.to(() => HomeScreen());
    });
  }
}
