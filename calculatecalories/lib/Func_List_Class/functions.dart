import 'package:flutter/material.dart';
import 'food.dart';
import '../joint.dart';


// !-- 1 --!  Altı Katogorinin ekranda üzerinde yazlarla hamgi boyutlarda duracağınığını belirleyen fonksyondur
Container buildExpanded(BuildContext ctx ,String name ,ImageProvider img, String routeName ) {
  return Container(
    height: MediaQuery.of(ctx).size.height*0.36,
    padding: EdgeInsets.fromLTRB(4.0, 4.0, 4.0, 0.0),
    decoration: BoxDecoration(
      image:DecorationImage(
        image: img,
        fit: BoxFit.fitWidth,
      ),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Text(
              name,
              textAlign: TextAlign.right,
              style: TextStyle(
                color: Colors.white,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
                fontFamily: 'IndieFlower',
              ),


            ),
          ],
        ),
      ],
    ),

  );
}



//  !-- 2 --!  Tıklandığında tıklanan yere göre farklı listelerin gönderilmesini sağlayan  fonksyon

GestureDetector buildGestureDetector(BuildContext context, List<Food> foodListName,String name,ImageProvider img, String routeName) {
  return GestureDetector(
    onTap: (){
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => joint(foodList: foodListName, text: name),
          ));
    },
    child: buildExpanded(
        context,name,img,routeName),
  );
}


