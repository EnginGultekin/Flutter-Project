import 'package:activity_app_with_getx/globals/strings.dart';
import 'package:activity_app_with_getx/globals/styles/app_colors.dart';
import 'package:activity_app_with_getx/modules/splash/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  await GetStorage.init();

  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: Colors.transparent));

  runApp(App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(1080, 1920),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: Strings.appName,
          // You can use the library anywhere in the app even in theme
          theme: AppColors.appTheme,
          home: SplashScreen(),
        );
      },
    );
  }
}
