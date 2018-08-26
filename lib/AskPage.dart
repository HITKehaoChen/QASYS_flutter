import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'AskHelper.dart';
class AskPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new AskState();
  }
}

class AskState extends State<AskPage>{
  //Here we try to use AskHelper to connect with the serve.
@override
  void initState() {
    // TODO: implement initState
    super.initState();
    init();

  }
}