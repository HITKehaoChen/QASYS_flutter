import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'AskHelper.dart';

String host = "http://127.0.0.1:5000/query";
String endpoint_key = "2e5673f5-438b-4621-9387-4fbf4db01700";
String kb = "97ba1f9a-34bf-4b08-8a29-7f76082aeacb";

void init(){
  Options options = new Options(
    baseUrl: "http://127.0.0.1:5000/query",
    connectTimeout: 5000,
    receiveTimeout: 3000,
  );
  Dio dio = new Dio(options);
}


