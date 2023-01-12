
import 'package:flutter/material.dart';
import 'Func_List_Class/functions.dart';
import 'home.dart';
import 'joint.dart';

void main() => runApp(MaterialApp(

  debugShowCheckedModeBanner: false,
  initialRoute: '/',
  routes: {
    '/' : (context) => Home(),
  }
));

