import 'package:flutter/material.dart';
import '../Tema-Stiller-Listeler/image_list.dart';


class Galeri extends StatefulWidget {
  String typeName;
  Galeri(this.typeName);

  @override
  _GaleriState createState() => _GaleriState();
}

class _GaleriState extends State<Galeri> {

  List<String> SeciliListe = [];

  @override
  Widget build(BuildContext context) {
    ListeEsitle();
    return  GridView.builder(
      itemCount: SeciliListe.length,
      itemBuilder: (BuildContext context , int index){
        return buildContainerImage(Image.asset(SeciliListe[index] ,fit: BoxFit.fill ));
      },
      primary: false,
      shrinkWrap: true,
      padding: const EdgeInsets.all(20),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
      ),
    );
  }

  Container buildContainerImage(Image image) {
    return Container(
            padding: const EdgeInsets.all(8),
            child: image,

          );
  }
  void ListeEsitle(){
    if(widget.typeName == 'Restoran')
      SeciliListe = Images().imagesRes;
    else if(widget.typeName == 'Kafe')
      SeciliListe = Images().imagesCafe;
    else if(widget.typeName == 'Kuaför')
      SeciliListe = Images().imagesHair;
    else
      SeciliListe = Images().imagesFun;
  }
}
