import 'package:android_pro/thema_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'view-models/controller.dart';
import 'views/home.dart';

void main() {
  // APpbardaki üst kısımda buluma alan
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: green,
      title: 'Weight Tracker',

      home: Home(),
    );
  }
}

