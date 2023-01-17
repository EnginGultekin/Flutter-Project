import 'package:emen_eer/Screens/konumlar.dart';
import 'package:emen_eer/Screens/yorumlar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:water_drop_nav_bar/water_drop_nav_bar.dart';
import '../Tema-Stiller-Listeler/place_lists.dart';
import '../Tema-Stiller-Listeler/thema_data.dart';
import 'galeri.dart';
import 'menuler.dart';

class MekanTek extends StatefulWidget {
  String typeName;
  Place place;
  int index;

  List<Widget> pages = [];

  MekanTek(this.typeName, this.place, [this.index = 0]) {
    pages = [
      Galeri(typeName),
      Menuler(place.mNameAndPriceOfFood),
      Yorumlar(place.commentLists),
      Konumlar(place),
    ];
  }

  @override
  _MekanTekState createState() => _MekanTekState();
}

class _MekanTekState extends State<MekanTek> {
  late int pageIndex;
  DateTime timeNow = DateTime.now();


  @override
  void initState() {
    super.initState();
    pageIndex = widget.index;

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.deepPurple),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(
          widget.place.name,
          style: MekanStili,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: RatingBar.builder(
              initialRating: widget.place.starRate,
              ignoreGestures: true,
              //minRating: 1,
              direction: Axis.horizontal,
              allowHalfRating: true,
              itemSize: 12,
              itemCount: 5,
              itemPadding: EdgeInsets.symmetric(
                horizontal: 0.4,
              ),
              itemBuilder: (context, _) => Icon(
                Icons.star,
                color: Colors.amber,
              ),
              onRatingUpdate: (rating) {
                print(rating);
              },
            ),
          ),
        ],
        centerTitle: true,
        backgroundColor: Color(0xFFF3F3F3),
      ),
      body: Column(
        children: [
          Card(
            margin: EdgeInsets.fromLTRB(18, 18, 18, 0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            elevation: 5,
            child: Container(
              height: 120,
              padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Adres: ',
                        style: Mekan2,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Expanded(
                        child: Text(
                          widget.place.address,
                          style: Mekan1,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Çalışma Saatleri : ',
                        style: Mekan2,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        widget.place.openHour.toString()+ '0' + ' - ' + widget.place.closeHour.toString()+'0',
                        style: Mekan1,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      if (widget.place.openHour < timeNow.hour || timeNow.hour <  widget.place.closeHour) ...[
                        Text(
                          'Açık',
                          style: MekanAcik,
                        ),
                      ] else ...[
                        Text(
                          'Kapalı',
                          style: MekanKapali,
                        ),
                      ]
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        widget.place.phoneNum,
                        style: Mekan2,
                      ),
                      IconButton(
                        splashColor: Colors.deepPurple,
                        onPressed: () => launch("tel://${widget.place.phoneNum}"),
                        icon: Icon(
                          Icons.call,
                          color: Colors.green[300],
                        ),
                        iconSize: 16,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Card(
              margin: EdgeInsets.fromLTRB(18, 18, 18, 10),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              elevation: 4,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6 , vertical: 12),
              child: widget.pages[pageIndex],
            ),
            ),
          ),

        ],
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(color: Colors.deepPurple),
          ),
        ),
        child: WaterDropNavBar(
          bottomPadding: 14,
          waterDropColor: Colors.deepPurple,

          //inactiveIconColor:Colors.red,
          iconSize: 28,
          backgroundColor: Colors.white,
          onItemSelected: (index) {
            setState(() {
              pageIndex = index;
            });
          },
          selectedIndex: pageIndex,
          barItems: [
            BarItem(
              filledIcon: FontAwesomeIcons.solidImage,
              outlinedIcon: FontAwesomeIcons.image,
            ),
            BarItem(
              filledIcon: widget.typeName == 'Kuaför'
                  ? FontAwesome5Solid.cut
                  : widget.typeName == 'Eglence & Oyun'
                      ? Icons.sports_baseball
                      : FontAwesome5Solid.wine_glass,
              outlinedIcon: widget.typeName == 'Kuaför'
                  ? Icons.cut_outlined
                  : widget.typeName == 'Eglence & Oyun'
                      ? Icons.sports_baseball_outlined
                      : FontAwesome5Solid.wine_glass_alt,
            ),
            BarItem(
              filledIcon: FontAwesome.comment,
              outlinedIcon: FontAwesome.comment_o,
            ),
            BarItem(
              filledIcon: Icons.location_pin,
              outlinedIcon: Icons.location_on_outlined,
            ),
          ],
        ),
      ),
    );
  }
}
