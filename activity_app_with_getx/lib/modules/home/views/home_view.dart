import 'package:activity_app_with_getx/globals/strings.dart';

import 'package:activity_app_with_getx/globals/styles/app_dimens.dart';
import 'package:activity_app_with_getx/globals/styles/app_text_styles.dart';
import 'package:activity_app_with_getx/models/activity.dart';
import 'package:activity_app_with_getx/modules/home/views/widgets/button_widget.dart';
import 'package:activity_app_with_getx/modules/home/home_controller.dart';
import 'package:activity_app_with_getx/modules/home/views/widgets/show_last_two_index_list.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'widgets/card_home_widget.dart';

class HomeScreen extends StatelessWidget {
  /// HomeController() sayfasındaki fonksyon ve değişkenlere ulaşabilmek için
  /// aşağıdaki gibi bir nesne oluşturulur bunu 'Get.put()' ile yapıyoruz
  final HomeController homeController = Get.put(HomeController());

  // ActivityScreen({Key? key}) {
  //   homeController.readActivityList();
  // }


  @override
  Widget build(BuildContext context) {
    /// Listemizin adını her seferinde uzun uzun yazmamak için başka bir listeye atadık
    List<Activity> listActivity = homeController.addedListActivities;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          Strings.activityName,
          style: AppTextStyles.activityNameStyle,
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: AppDimens.homeEdgeInsets,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            /// Ana Ekarnın üstündeki Card
            CardHomeWidget(homeController: homeController),
            Padding(
              padding: AppDimens.homeEdgeInsets,
              /// Listemizin sondan iki elamanını  gösteren kısım , burayı Obx yerine GetBuilder<> kullanarak güncelledik
              child: GetBuilder<HomeController>(
                builder: (_) => Column(
                  /// 'revers' listemizi ters çeviriyor
                  /// 'take()' sondan kaç elaman alacağını söylüyor
                  /// 'map()'  listeyi map'e dönüştürerek yazdırıyor daha sonra  'ShowLastTwoIndex' yapıyla iki kart yazdırıyor
                  children: listActivity.reversed.take(2).map((activity) => ShowLastTwoIndex(activity)).toList(),
                ),
              ),
            ),
            /// Activity sayfasına geçmek için kullanılan buton
            MyButton(
                text: 'Show The All List',
                icon: Icons.account_balance_wallet_outlined,
                onPressed: () {
                  homeController.goActivitiesPage();

                }),
          ],
        ),
      ),
    );
  }
}
