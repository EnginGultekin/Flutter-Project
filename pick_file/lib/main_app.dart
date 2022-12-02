import 'package:flutter/material.dart';
import 'package:pick_file/web_upload.dart';


class UploadApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    return MaterialApp(

      title: 'My App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Quicksand',
        primarySwatch: Colors.purple,
      ),
      home:  FileUploadApp(),



    );
  }
}