import 'package:emen_eer/Screens/Mekanlar_Screen/mekanlar_hepsi.dart';
import 'package:emen_eer/Tema-Stiller-Listeler/place_lists.dart';
import 'package:flutter/material.dart';
import '../../Tema-Stiller-Listeler/thema_data.dart';


class GestureForHomePage extends StatelessWidget {

  late final String name;
  late final IconData icon;
  late final Color color;
  List<Place> gelenliste;
  GestureForHomePage(this.name, this.icon,this.color,this.gelenliste);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(
            builder: (context) => MekanlarHepsi(name,gelenliste),
            ),
          );
        },
        child: Cards_Home(name,icon,color));
  }
}

class ContainerHome extends StatelessWidget {
  late final String name;
  late final IconData icon;
  late final Color color;
  List<Place> gelenliste;
  ContainerHome(this.name, this.icon,this.color,this.gelenliste);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: heigthScreen(context , 0.30),
      width: widthScreen(context, 0.40),
      child: GestureForHomePage(name,icon,color,gelenliste),
    );
  }
}

class Cards_Home extends StatelessWidget {

  late final String name;
  late final IconData icon;
  late final Color color;
  Cards_Home(this.name, this.icon,this.color);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: whiteColor1,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      elevation: 5,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(
            icon,
            size: 34,
            color: color,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            name,
            style:CardStiliHome,   // Burda oluşurduğumuz sabitleri kullanarak kısalttık
          ),
        ],
      ),
    );
  }
}