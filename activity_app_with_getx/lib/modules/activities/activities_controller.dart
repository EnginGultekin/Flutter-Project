import 'package:activity_app_with_getx/models/activity.dart';
import 'package:activity_app_with_getx/repositories/activity_repository.dart';
import 'package:get/get.dart';

class ActivitiesController extends GetxController {
  ActivityRepository storageRepository = ActivityRepository();

  ///var addedListActivities2 = [].obs; yukarıdaki tanımlama obs (Activity Tipini belirtmek için)
  var addedListActivities = <Activity>[].obs;

  void deleteList(Activity activity) {
    storageRepository.delete(activity);
    addedListActivities.value.remove(activity);
    update();
  }

  void readActivityList() async {
    addedListActivities.value = await storageRepository.getAll();
    update();
  }
}
