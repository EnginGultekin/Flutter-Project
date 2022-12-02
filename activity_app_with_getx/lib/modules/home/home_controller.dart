import 'package:activity_app_with_getx/modules/activities/views/activities_view.dart';
import 'package:activity_app_with_getx/models/activity.dart';
import 'package:activity_app_with_getx/repositories/activity_repository.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  ActivityRepository activityRepository = ActivityRepository();

  /// Ana Ekranda Apiden çekilen 6 text verisini obje olarak tutan ve başta null safety sağlaması için örnek veriler verilmiştir
  /// Burda değişeceğini sonunda tanımlı olan '.obs ' ile anlıyabiliriz yani objenin içindekiler değiştiğinde  değişikliğin
  /// yazılacağı yerde 'showActivity' yi  'Obx' ile sarmalarsak değişikliği görebiliriz
  var _showActivity = Activity(
    activity: "First Activity",
    type: "FirstJOB",
    participants: 1,
    price: 0,
    key: "111111111",
    accessibility: 1,
  ).obs;

  /// '_showActivity' objesinin get ve set methodları
  Activity get showActivity => _showActivity.value;
  set showActivity(value) => _showActivity.value = value;

  /// HomeScreen için  activity listesini tutan <Activity> tipindeki listemiz
  /// ekleme çıkarmalar olacağı için değişen bir listedir bu yüzden 'obs' ile tanımlanmıştır
  var addedListActivities = <Activity>[].obs;

  @override
  /// HomeController() ilk açıldığında çalışam methodh
  void onInit() {
    readActivityList();
    getActivity();
    super.onInit();
  }

  /// Bu fonksyon Apiden gelen verileri aşlağıdaki işlemlerle 'showActivity' atamaktadır
  void getActivity() async {
    var getdata = await activityRepository.fetchActivity();
    if (getdata != null) showActivity = getdata;

  }

  /// HopmeScreen() sayfasından ActivityScreen() sayfasına geçişi sağlayan fonksyon
  /// bu geçişi Navigator yerine 'Get.to()' methodu ile yapmaktadır
  void goActivitiesPage() {
    Get.to(ActivityScreen());
  }

  /// Add Butonuna basıldığında çalışan fonksyon listeye eklenmesini istenilen activityi ekler
  /// Önce Staragetaki  ekleme fonksyonu ile daha sonradas burda vtanımlamış olduğumuz listeye ekledik
  /// son satırda da Listenin güncellemesini 'GetBuilder<>' ile yaptığımız için 'update()' kullandık
  void addActivityList(Activity object) {
    activityRepository.add(object);
    addedListActivities.add(object);
    update();
  }

  /// Burası ilk başta storagetaki kayıtlı listeyi bizim burdaki mevcut listemize atmasını yapıyor
  /// ve burda da GetBuilder<> dan dolayı 'update()' fonksyonu kullandık
  /// NOOOT !!! GetBuilder<> yerine istersek 'Obx' kullanabiliriz denemek için yaptık
   void readActivityList() async {
    addedListActivities.value = await activityRepository.getAll();
    update();
  }
}
