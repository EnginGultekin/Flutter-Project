import 'package:android_pro/views/add_record.dart';
import 'package:android_pro/views/graph.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'history.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentTab = 0;
  // Başlangıc ekranı
  Widget _currentScreen = GraphScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(title: Text("Track You")),
      body: _currentScreen,
      floatingActionButton: FloatingActionButton(
         onPressed: () {
           /// 1.Easy navigation
           Get.to(AddRecordView());
         },
        child: Icon(FontAwesome.plus),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
        // Telefon ekranına göre oranla ona göre büyüklüğü ayarla
        height: Get.height/11,
        gapLocation: GapLocation.center,
        activeColor: Colors.green,
        inactiveColor: Colors.deepPurple,
        icons: [Icons.show_chart,Icons.history],
        iconSize: 30,
        activeIndex: _currentTab,
        onTap: (int){
          setState(() {
            _currentTab = int;
            _currentScreen = (int == 0) ? GraphScreen() : HistoryScreen(); });
          print(int.toString());
        },
      ),
    );
  }
}
