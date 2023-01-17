import 'dart:async';
import 'package:flutter/material.dart';
import '../../Tema-Stiller-Listeler/thema_data.dart';



class SplashScreen extends StatefulWidget {

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override

  void initState() {
    super.initState();
    Timer(Duration(seconds: 2),
            ()=>Navigator.of(context)
                .pushNamedAndRemoveUntil('/HomePage', (Route<dynamic> route) => false),
        );
  }
  Widget build(BuildContext context) {
    return  Container(
        color: Colors.deepPurple,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Icon(
                //   FontAwesomeIcons.home,
                //   color: Colors.tealAccent,
                //   size: 64.0,
                // ),
                baslik1_1,
              ],
            ),

    );
  }
}

