import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'AskHelper.dart';

class HistoryPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: "Flutter AskMe",
      theme: new ThemeData(
        primaryColor: Colors.green
      ),
      debugShowCheckedModeBanner: false,
      home: new Scaffold(
        body: new Center(child: new Text("历史"),),
      ),
    );
  }
}