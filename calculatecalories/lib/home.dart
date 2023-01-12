import 'package:calculatecalories/joint.dart';
import 'package:flutter/material.dart';
import 'Func_List_Class/food.dart';
import 'Func_List_Class/functions.dart';
import 'Func_List_Class/food.dart';
import 'Func_List_Class/lists.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var variable = false;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        if (variable) {
          setState(() {
            variable = false;
          });
          return Future.value(false);
        } else {
          return Future.value(true);
        }
      },
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text(
            'Calculate Calories',
            style: TextStyle(
              color: Colors.black54,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.white70,
        ),
        body: Padding(
          padding: EdgeInsets.fromLTRB(1.0, 2.0, 1.0, 2.0),
          child: SingleChildScrollView(
            child: variable
                ? Container(
                    //child: Text(''),
                    )
                : Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      buildGestureDetector(context, Liste.breakfast, 'Kahvaltılıklar', AssetImage('assets/kahva.png'), '/joint'),
                      SizedBox(height: 2),
                      buildGestureDetector(context, Liste.dinner, 'Ana Yemekler', AssetImage('assets/anayemek.png'), '/joint'),
                      SizedBox(height: 2),
                      buildGestureDetector(context, Liste.snack, 'Atıştırmalıklar', AssetImage('assets/atis.png'), '/joint'),
                      SizedBox(height: 2),
                      buildGestureDetector(context, Liste.fruit, 'Meyveler', AssetImage('assets/meyve2.png'), '/joint'),
                      SizedBox(height: 2),
                      buildGestureDetector(context, Liste.dessert, 'Tatlılar', AssetImage('assets/tatli.png'), '/joint'),
                      SizedBox(height: 2),
                      buildGestureDetector(context, Liste.drink, 'İçecekler', AssetImage('assets/icecek.png'), '/joint'),
                      SizedBox(height: 1),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => joint(foodList: [], text : 'Calculate'),
                              ));
                        },
                        style: ButtonStyle(
                            padding: MaterialStateProperty.all<EdgeInsets>(
                              EdgeInsets.fromLTRB(2, 3, 2, 3),
                            ),
                            backgroundColor: MaterialStateProperty.all(Colors.greenAccent)),
                        child: Text(
                          'Calculate',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.grey[800], fontSize: 28.0, fontWeight: FontWeight.bold, fontFamily: 'IndieFlower'),
                        ),
                      ),
                    ],
                  ),
          ),
        ),
      ),
    );
  }
}
