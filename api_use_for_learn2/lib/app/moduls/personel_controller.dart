import 'package:get/get.dart';
import '../data/models/all_models_import.dart';
import '../data/repository/personel_repository.dart';

class PersonalController extends GetxController {
  final _personalList = <Datum>[].obs;
  final PersonalRepository _personelRepository = PersonalRepository();

  List<Datum> get personalList => _personalList;
  set personalList(value) => _personalList.value = value;


  @override
  void onReady() async {
   await getPerson();
  }

  Future<void> getPerson() async {
    _personalList.value = await _personelRepository.callPerson();
  }
}
