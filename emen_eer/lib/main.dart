import 'package:flutter/material.dart';
import 'Screens/Home_Screen/home_page.dart';
import 'Screens/Home_Screen/splash_screen.dart';
import 'Tema-Stiller-Listeler/thema_data.dart';

void main() => runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: purple,
    initialRoute: '/',
    routes: {
        '/' : (context) => SplashScreen(),
      '/HomePage' : (context) => HomePage(),
    }
));

