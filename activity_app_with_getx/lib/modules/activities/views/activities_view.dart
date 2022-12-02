import 'package:activity_app_with_getx/globals/styles/app_dimens.dart';
import 'package:activity_app_with_getx/models/activity.dart';
import 'package:activity_app_with_getx/modules/activities/activities_controller.dart';
import 'package:activity_app_with_getx/modules/activities/views/widgets/card_widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class ActivityScreen extends StatelessWidget {
  final ActivitiesController controller = Get.put(ActivitiesController());

  ActivityScreen({Key? key}) {
    controller.readActivityList();
  }

  @override
  Widget build(BuildContext context) {
    List<Activity> activities = controller.addedListActivities;
    return Scaffold(
      appBar: AppBar(
        title: Text('Activities List'),
        centerTitle: true,
      ),
      body: activities.isEmpty
          ? Center(
              child: Container(child: Text('Bir şeyler ekleyiniz')),
            )
          : Padding(
              padding: AppDimens.homeEdgeInsets,
              child: GetBuilder<ActivitiesController>(
                  builder: (_) => ListView(
                        physics: BouncingScrollPhysics(),
                        children:
                            activities.map((activityObject) => CardWidgets(activityObject: activityObject)).toList(),
                      )),
            ),
    );
  }
}
