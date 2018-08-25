import 'package:flutter/material.dart';
import 'dart:async';
import 'MainPage.dart';

void main()=>runApp(MyApp());
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Flutter Ask Me",
      theme : new ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MainPage(),
    );
  }

}