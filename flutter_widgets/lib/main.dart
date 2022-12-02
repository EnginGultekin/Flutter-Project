import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_widgets/app/globals/extensions/localization_extension.dart';
import 'package:flutter_widgets/app/globals/initial_binding.dart';
import 'package:flutter_widgets/app/globals/localizations/localization_keys.dart';
import 'package:flutter_widgets/app/globals/utils/localization_util.dart';
import 'package:flutter_widgets/app/routes/pages.dart';
import 'package:flutter_widgets/app/routes/routes.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app/globals/style/styles.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      builder: (BuildContext context, _) {
        return GetMaterialApp(
          getPages: Pages.pages,
          locale: LocalizationUtil.defaultLocale(),
          fallbackLocale: LocalizationUtil.fallbackLocale,
          translations: LocalizationUtil(),
          initialBinding: InitialBinding(),
          initialRoute: Routes.mainScreen,
          title: LocalizationKeys.appName.translate,
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            textTheme: GoogleFonts.sourceSansProTextTheme(),
            primaryColor: AppColors.primary,
            colorScheme:
                ThemeData().colorScheme.copyWith(primary: AppColors.primary),
          ),
        );
      },
    );
  }
}
