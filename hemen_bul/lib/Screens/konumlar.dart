import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../Tema-Stiller-Listeler/place_lists.dart';
import '../Tema-Stiller-Listeler/thema_data.dart';


class Konumlar extends StatefulWidget {

  Place place;
  Konumlar(this.place);

  @override
  _KonumlarState createState() => _KonumlarState();
}

class _KonumlarState extends State<Konumlar> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            Expanded(child: Image.asset('assets/images/maps/maps2.png',fit: BoxFit.fitHeight,)),
          ],
        ),

        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Align(
             alignment: Alignment.center,
              child: Icon(
                Icons.location_on_outlined,
                size: 48,
                color: Colors.deepPurple,
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: FlatButton(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Haritada Göster',
                    style: KonumStili,
                  ),
                ),
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    color: Colors.deepPurple,
                  ),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                height: 24,
                color: Colors.white,
                onPressed: () => launch(
                    "${widget.place.maps}"),
              ),
            ),
          ],
        ),

      ],
    );
  }
}
