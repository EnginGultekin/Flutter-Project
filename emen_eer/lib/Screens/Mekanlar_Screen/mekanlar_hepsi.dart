import 'package:emen_eer/Screens/Mekanlar_Screen/buttons_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../Tema-Stiller-Listeler/place_lists.dart';
import '../../Tema-Stiller-Listeler/thema_data.dart';
import '../mekan_tek.dart';

class MekanlarHepsi extends StatefulWidget {
  String name;
  List<Place> gelenListe;
  int order = 0;
  IconData icons = FontAwesomeIcons.sortAmountDown;
  MekanlarHepsi(this.name, this.gelenListe);

  @override
  _MekanlarHepsiState createState() => _MekanlarHepsiState();
}

class _MekanlarHepsiState extends State<MekanlarHepsi> {

  @override
  void initState() {
    funcSiralaKonum(widget.gelenListe);
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {

              if(widget.order==0){
                funcSiralaPuan(widget.gelenListe);
                widget.icons = FontAwesomeIcons.sortNumericDownAlt;
                widget.order = 1;
              }
              else if(widget.order==1){
                funcSiralaName(widget.gelenListe);
                widget.icons = FontAwesomeIcons.sortAlphaDown;

                widget.order = 2;
              }
              else {
                funcSiralaKonum(widget.gelenListe);
                widget.icons = FontAwesomeIcons.sortAmountDown ;
                widget.order = 0;
              }
              setState(() {

              });
            },
            icon: Icon(
              widget.icons,
              size: 22,
            ),
            alignment: Alignment.centerLeft,
            splashColor: Colors.white,
          ),
        ],
        title: Text(widget.name),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: widget.gelenListe.length,
          itemBuilder: (context, index) {
            return mekanCard(context, widget.gelenListe[index]);
          }),
    );
  }


  Widget mekanCard(BuildContext context, Place place) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => MekanTek(widget.name, place)));
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        elevation: 4,
        color: whiteColor1,
        margin: EdgeInsets.fromLTRB(18, 18, 18, 6),
        child: Padding(
          padding: EdgeInsets.fromLTRB(10, 16, 10, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        'Mekan ismi : ',
                        style: CardStili2_1,
                      ),
                      Text(
                        place.name,
                        style: CardStili2,
                      ),
                    ],
                  ),
                  RatingBar.builder(
                    initialRating: place.starRate,
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
                ],
              ),
              SizedBox(height: 4),
              Row(
                children: [
                  Text(
                    'Mekan Adresi : ',
                    style: CardStili2_1,
                  ),
                  Text(
                    place.location,
                    style: CardStili2,
                  ),
                ],
              ),
              SizedBox(height: 4),
              Row(
                children: [
                  Text(
                    'Mekan Cinsi : ',
                    style: CardStili2_1,
                  ),
                  Text(
                    place.type,
                    style: CardStili2,
                  ),
                ],
              ),
              SizedBox(height: 4),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FlattButtonStyle(text: 'Rezerve', icon: FontAwesomeIcons.book, onpress: () {}),
                  SizedBox(
                    width: 8,
                  ),
                  FlattButtonStyle(
                      text: 'Konum',
                      icon: FontAwesomeIcons.locationPin,
                      onpress: () => launch("${place.maps}")
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //     builder: (context) => MekanTek(widget.name ,place,3),
                        //   ),
                        // );
                      ,
                      color: whiteColor1),
                  SizedBox(
                    width: 8,
                  ),
                  FlattButtonStyle(
                      text: 'Yorumlar',
                      icon: FontAwesomeIcons.solidComment,
                      onpress: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MekanTek(widget.name ,place,2),
                          ),
                        );
                      },
                      color: whiteColor1),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

}
