import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';

class WorldTime {

  late String location;     // Location name for the UI
  late String time;         // The time in that location
  late String flag;         // Url to on asset flag icon
  late String urls;         // Location url for api endpoin
  late bool isDayTime;      // true or false if daytime or not

  // Constructora 'time' değişkenini koymadık çünkü onu altta eşitledik


  WorldTime(this.urls, this.location, this.flag); // location url for Api endpoint



  Future<void> getTime() async {

    try{

      var url =  Uri.parse('http://worldtimeapi.org/api/timezone/$urls');
      var response = await http.get(url);

      Map data = jsonDecode(response.body);
      //print(data);

      //Get properties from data
      String datetime = data['datetime'];
      String offset = data['utc_offset'].substring(1,3);
      // print(datetime);
      //print(offset);

      //Create DateTime object
      DateTime now = DateTime.parse(datetime);
      now = now.add(Duration(hours: int.parse(offset)));

      //set the time property -> Zamana pm-am ekledik yeni satırla
      time = DateFormat.jm().format(now);   //time = now.toString();
      isDayTime = now.hour > 6 && now.hour < 20 ? true : false;
      //Eğer saat 6 ve 19 arasında ise true değilse false dönecek


      //print('Response status: ${response.statusCode}');
      //print('Response body: ${response.body}');
      //print(await http.read(Uri.parse('https://example.com/foobar.txt')));

    }catch (e){
      print('caugh error: $e');
      time = 'could not get time data';

    }

  }
}
