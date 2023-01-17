import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../Tema-Stiller-Listeler/place_lists.dart';
import '../../Tema-Stiller-Listeler/thema_data.dart';
import 'homepage_widgets.dart';


class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
         onPressed: (){},
          icon: Icon(
              FontAwesomeIcons.bars,
          ),
          iconSize: 26,
          alignment: Alignment.center,
           splashColor: Colors.greenAccent,
        ),
        title: baslik1,
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          buildRowUst(context),
          buildRowAlt(context),
        ],
      ),
    );
  }

  Row buildRowUst(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ContainerHome('Restoran', FontAwesomeIcons.utensils, Colors.red,Liste.restaurantList,),
        ContainerHome('Kafe', FontAwesomeIcons.coffee, Colors.yellow,Liste.cafeList),
      ],
    );
  }

  Row buildRowAlt(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
       ContainerHome('Kuaför', FontAwesomeIcons.cut, Colors.cyanAccent,Liste.hairdressertList),
       ContainerHome('Eglence & Oyun', FontAwesomeIcons.music, Colors.orange,Liste.enjoyList),
      ],
    );
  }
}
