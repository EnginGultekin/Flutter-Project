
import 'package:api_use_for_learn2/app/data/models/all_models_import.dart';

import '../models/personel.dart';
import '../provider/personel_provider.dart';

class PersonalRepository {

  final PersonalProvider _personelProvider = PersonalProvider();

  Future<List<Datum>> callPerson() async {
    List<Datum> datumList = [];

    try {
      final response = await _personelProvider.callPerson();
      if (response.statusCode == 200) {
        var result = personalFromJson(response.body);
        datumList = result.data;
      } else {
        print(response.statusCode);
      }
    } catch (e) {
      print(e.toString());
    }

    return datumList;
  }


}

