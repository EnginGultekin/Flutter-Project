import 'package:emen_eer/Tema-Stiller-Listeler/comment_list.dart';
import 'package:emen_eer/Tema-Stiller-Listeler/thema_data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Yorumlar extends StatefulWidget {
  List<Comments> commentLists;
  final TextEditingController textControl = TextEditingController();

  Yorumlar(this.commentLists);

  @override
  _YorumlarState createState() => _YorumlarState();
}

class _YorumlarState extends State<Yorumlar> {
  // Yazılan yorum burda
  String? metinkontrol;
  double starRate = 2.5;
  List<Comments> com = [];

  @override
  void initState() {
    com= widget.commentLists;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: heigthScreen(context, 0.25),
            child: ListView.builder(
                itemCount: com.length,
                itemBuilder: (context, index) {
                  return buildContainer(com[index]);

                }),
          ),
          SizedBox(height: 20,),
          Container(
            padding: EdgeInsets.fromLTRB(12, 12, 12, 6),
            child: TextField(
              autofocus:  false,
              onChanged: (input) async {
                metinkontrol = widget.textControl.text;
              },
              controller: widget.textControl,
              maxLines: 3,
              minLines: 1,
              keyboardType: TextInputType.multiline,
              textCapitalization: TextCapitalization.words,
              cursorColor: Colors.deepPurple,
              // cursor işlemleri imlecin rengi
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Görüşünüzü Belirtiniz',
                labelText: 'Yorum Yap',
                hintStyle: YorumKutusu,
                suffixIcon: Icon(FontAwesomeIcons.pen),
                filled: true,
                fillColor: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      'Puanla : ',
                      style: PuanlaStili,
                    ),
                    Text(
                      starRate.toString(),
                      style: PuanlaStili2,
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                RatingBar.builder(
                  initialRating: 2.5,
                  //ignoreGestures: true,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemSize: 28,
                  itemCount: 5,
                  itemPadding: EdgeInsets.symmetric(
                    horizontal: 0.4,
                  ),
                  itemBuilder: (context, _) => Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  onRatingUpdate: (rating) {
                    starRate = rating;
                    setState(() {});
                  },
                ),
                SizedBox(
                  height: 8,
                ),
                FlatButton(
                  autofocus: false,

                  onPressed: () {
                    _showDialog(context);
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Yorumu Gönder',
                      style: GonderStili,
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
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container buildContainer(Comments comments) {
    return Container(
      padding: EdgeInsets.fromLTRB(12, 0, 12, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RatingBar.builder(
                initialRating: comments.giveRate,
                ignoreGestures: true,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemSize: 16,
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
              Text(comments.dateTime.toString(),
              style: Mekan2,),
            ],
          ),
          SizedBox(height: 11,),
          ReadMoreText(comments.comment,
              style: YorumlarStili,
              trimLines: 2,
              colorClickableText: blackColor2,
              trimMode: TrimMode.Line,
              trimCollapsedText: 'Devamı',
              trimExpandedText: 'Daha Az Göster',
              moreStyle: PuanlaStili),
          Divider(
            height: 20,
            thickness: 1,
          ),
        ],
      ),
    );
  }

   _showDialog(BuildContext context) {
    final snackBar = SnackBar(
      duration: Duration(seconds: 2),
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: Colors.deepPurple,
        ),
        borderRadius: BorderRadius.circular(10.0),
      ),
      content: Text(
        'Yorumunuz İçin Teşekkürler',
        style: PuanlaStili,
      ),
      action: SnackBarAction(
        label: '',
        onPressed: () {
          // Some code to undo the change.
        },
      ),
    );

    if (widget.textControl.text.isEmpty) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: new Text("Yorum Yap"),
            content:
            new Text("Yorum Yapmadınız Lütfen Yorum Yapın ve Tekrar Deneyin"),
            actions: <Widget>[
              new FlatButton(
                child: new Text("Tamam"),
                onPressed: () {

                  Navigator.of(context).pop();
                  FocusManager.instance.primaryFocus?.unfocus();
                },
              ),
            ],
          );
        },
      );
    } else {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: new Text("Yorum Gönder"),
            content:
            new Text("Yapmış olduğunuz yorumu göndermek istiyor musunuz ?"),
            actions: <Widget>[
              new FlatButton(
                child: new Text("Hayır"),
                onPressed: () {
                  Navigator.of(context).pop();
                  FocusManager.instance.primaryFocus?.unfocus();
                },
              ),
              new FlatButton(
                child: Text("Evet"),
                onPressed: () {
                  widget.textControl.text = '';
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  Navigator.of(context).pop();
                  FocusManager.instance.primaryFocus?.unfocus();
                },
              ),
            ],
          );
        },
      );
    }

  }
}


