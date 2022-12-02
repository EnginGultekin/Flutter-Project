import 'dart:convert';
import 'package:api_use_for_learn/data/globals/constant.dart';
import 'package:http/http.dart' as http;
 import '../model/load_data.dart';

Future <LoadData> apiCall() async {
  final response = await http.get(Uri.parse(ApiURL.apiUrl));
  if(response.statusCode == 200){
    return LoadData.fromjson(json.decode(response.body));
  } else{
    throw Exception('There is an Error !!!!');
  }
 }