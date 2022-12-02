import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_widgets/app/globals/extensions/localization_extension.dart';
import 'package:flutter_widgets/app/globals/localizations/localization_keys.dart';
import 'package:flutter_widgets/app/globals/style/app_colors.dart';
import 'package:flutter_widgets/app/modules/Widgets_module/action_and_shortcuts.dart';
import 'package:get/get.dart';

class MainView extends StatelessWidget {
  MainView({Key? key}) : super(key: key);

  final List<String> widgetsList = [
    'Action and Shortcuts',
    'Widget:..........',
    'Widget:..........',
    'Widget:..........',
    'Widget:..........',
    'Widget:..........',
    'Widget:..........',
    'Widget:..........',
    'Widget:..........',
    'Widget:..........',
    'Widget:..........',
    'Widget:..........',
    'Widget:..........',
    'Widget:..........',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(LocalizationKeys.mainHeader.translate),
          centerTitle: true,
        ),
        body: Padding(
          padding: EdgeInsets.only(top: 10.h),
          child: ListView.builder(
            itemCount: widgetsList.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                title: InkWell(
                  onTap: () {
                    widgetsPage(index);
                  },
                  child: Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 5.w, vertical: 10.h),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: AppColors.tertiaryText,
                      ),
                    ),
                    child: Text('${index + 1}. ${widgetsList[index]}'),
                  ),
                ),
              );
            },
          ),
        ));
  }

  widgetsPage(int index) {
    if (index == 0) {
      Get.to(const ActionAndShortcuts());
    } else {
      return MainView();
    }
  }
}
