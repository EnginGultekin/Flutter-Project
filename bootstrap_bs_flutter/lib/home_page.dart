import 'package:flutter/material.dart';
import 'screens/all_screens_export.dart';

List<Map<String, dynamic>> source = [];
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: BootstapButtons(),
      )
    );
  }

}

