import 'package:http/http.dart' as http;
import '../globals/constant.dart';

class PersonalProvider {
  Future<dynamic> callPerson() async {
    return await http.get(ApiURL.apiUrl);
  }
}
