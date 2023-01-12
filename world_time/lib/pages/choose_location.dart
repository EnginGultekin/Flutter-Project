import 'package:flutter/material.dart';
import 'package:world_time/services/world_time.dart';

class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {

  List<WorldTime> locations = [  // url: location: flag:
    WorldTime('Europe/Istanbul', 'Ankara/Turkey', 'turkey.png'),
    WorldTime('Europe/Amsterdam', 'Amsterdam/Netherlands', 'hollanda.png'),
    WorldTime('America/Argentina/Buenos_Aires', 'Buenos Aires/Argentina', 'argantina.png'),
    WorldTime('Europe/Athens', 'Athens/Greece',  'greece.png'),
    WorldTime('Asia/Baku', 'Baku/Azerbaijan ', 'azerbaycan.png'),
    WorldTime('Europe/Berlin', 'Berlin/Germany',  'germany.png'),
    WorldTime('Africa/Cairo', 'Cairo/Egypt', 'egypt.png'),
    WorldTime('America/Chicago', 'Chicago/America',  'usa.png'),
    WorldTime('Asia/Dubai', 'Dubai/UAE',  'uae.png'),
    WorldTime('Asia/Jakarta', 'Jakarta/Indonesia', 'indonesia.png'),
    WorldTime('America/Havana', 'Havana/Cuba',  'cuba.png'),
    WorldTime('Asia/Hong_Kong', 'Hong Kong/China',  'china.png'),
    WorldTime('Europe/Kiev', 'Kiev/Ukraine',  'ukrayna.png'),
    WorldTime('Europe/Rome', 'Rome/Italy',  'italy.png'),
    WorldTime('Asia/Tokyo', 'Tokyo/Japan',  'japan.png'),
    WorldTime('Europe/London', 'London/England',  'uk.png'),
    WorldTime('Europe/Moscow', 'Moscow/Russia',  'russia.png'),
    WorldTime('Africa/Nairobi', 'Nairobi/Kenya',  'kenya.png'),
    WorldTime('America/New_York', 'New York/America',  'usa.png'),
    WorldTime('Asia/Qatar', 'Doha/Qatar',  'qatar.png'),
    WorldTime('Asia/Seoul', 'Seoul/South Korea', 'south_korea.png'),
    WorldTime('Europe/Zurich', 'Zurich/Switzerland', 'isvicre.png'),

  ];

  void updateTime(index) async {

    WorldTime instance = locations[index];
    await instance.getTime();
    //navigate to home screen
    Navigator.pop(context, {
      'location': instance.location,
      'flag': instance.flag,
      'time': instance.time,
      'isDayTime': instance.isDayTime,
    });

  }
/*
  void getData() async {

    //simulate network request for a username
    String username = await Future.delayed(Duration(seconds: 3),() {
      return 'EnLeng';
    });

    //simulate network request to get bio of the username
    String bio = await Future.delayed(Duration(seconds: 2),(){
      return 'Artist , Engineer & Good Player';
    });

    print('$username - $bio');

  }
*/

  @override
  void initState() {
    super.initState();
    //getData();
    //print('Burası async içinde olmadığı için ordaki süreleri beklemez daha çnce çalışır');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[600],
      appBar: AppBar(
        title: Text('Choose Location'),
        backgroundColor: Colors.black45,
        centerTitle: true,
        elevation: 0.0,
      ),
      body: ListView.builder(     // Liste Oluştur
        itemCount: locations.length, // Liste eleman Sayısı location uzunluğu kadar
        itemBuilder: (context ,index){
          return Padding(
            padding: EdgeInsets.symmetric(vertical: 1.0,horizontal: 4.0),
            child: Card(
              color: Colors.white70,
              shadowColor: Colors.red[900],
              child: ListTile(
                onTap: () {
                  updateTime(index);
                },
                title: Text(
                    locations[index].location,
                    style: TextStyle(
                      color: Colors.black,

                ),
                ),
                leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/${locations[index].flag}'),
                ),
              ),
            ),
          );
        }
      ),
    );
  }
}
