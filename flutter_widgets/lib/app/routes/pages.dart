import 'package:flutter_widgets/app/modules/main_modules/main.dart';
import 'package:flutter_widgets/app/routes/routes.dart';
import 'package:get/get.dart';

class Pages {
  static final pages = [
    GetPage(
      name: Routes.mainScreen,
      page: () => MainView(),
      binding: MainBinding(),
    ),
  ];
}
