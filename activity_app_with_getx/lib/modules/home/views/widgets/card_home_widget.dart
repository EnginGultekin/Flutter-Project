import 'package:activity_app_with_getx/globals/constants.dart';
import 'package:activity_app_with_getx/globals/styles/app_dimens.dart';
import 'package:activity_app_with_getx/modules/home/home_controller.dart';
import 'package:activity_app_with_getx/modules/home/views/widgets/button_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'rich_text_widgets.dart';


/* Ana Ekranda üst kısımda yer alan card'ın tamamı burda oluşturuluyor */


class CardHomeWidget extends StatelessWidget {
  const CardHomeWidget({
    Key? key,
    required this.homeController,
  }) : super(key: key);
  /// Controller sınıfından tanımlanan Homecontroller nesnesi
  final HomeController homeController;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      margin: AppDimens.homeEdgeInsets,
      shape: RoundedRectangleBorder(borderRadius: AppDimens.borderRadiusLarge),
      child: Column(
        children: [
          Container(
              height: Constants.cardContainerHeight,
              width: Constants.cardContainerWidth,
              margin: AppDimens.homeEdgeInsets,
              decoration: BoxDecoration(
                borderRadius: AppDimens.borderRadiusSmall,
              ),
              /// Obx() ekranda değişen 6 textin hepsinin güncel halleriyle değişmesini  sağlamakatadır
             /// HomeController()'da 'showActivity.obs'  şeklinde bir tanım olmasa Obx çalışmaz
              child: Obx(() =>
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichTextWidgets(
                        textTitle: 'Activity: ',
                        textActivity: homeController.showActivity.activity,
                      ),
                      RichTextWidgets(
                        textTitle: 'Type: ',
                        textActivity: homeController.showActivity.type,
                      ),
                      RichTextWidgets(
                        textTitle: 'Participants: ',
                        textActivity: homeController.showActivity.participants.toString(),
                      ),
                      RichTextWidgets(
                        textTitle: 'Price: ',
                        textActivity: homeController.showActivity.price.toString(),
                      ),
                      RichTextWidgets(
                        textTitle: 'Key: ',
                        textActivity: homeController.showActivity.key,
                      ),
                      RichTextWidgets(
                        textTitle: 'Accessibility: ',
                        textActivity: homeController.showActivity.accessibility.toString(),
                      ),
                    ],
                  )),
          ),
          Padding(
            padding: AppDimens.paddingHome,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MyButton(
                  text: 'Add',
                  icon: Icons.add,
                  onPressed: () {
                    /// Ekleme butonuna basınca  HomeController() Sınıfındaki fonksyopnları çağırmaktayız
                    homeController.addActivityList(homeController.showActivity);
                    homeController.getActivity();

                  },
                ),
                MyButton(
                  text: 'Refresh',
                  icon: Icons.refresh,
                  onPressed: () {
                    /// Rerfresh butonuna basınca Apiden yeni verileri almasını sağlıyoruz
                    homeController.getActivity();
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
