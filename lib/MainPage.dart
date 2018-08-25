import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class MainPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
        primaryColor: Colors.green
      ),
   home: new MainPageWidget()
    );
  }
}

class MainPageWidget extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return new MainPageState();
  }
}

class MainPageState extends State<MainPageWidget>{
  int _tabIndex = 0;
  var tabImages;
  var appBarTitles = ['提问','历史','关于'];

  Text getTabTitle(int curIndex) {
    if (curIndex == _tabIndex) {
      return new Text(appBarTitles[curIndex],
          style: new TextStyle(color: const Color(0xff63ca6c)));
    } else {
      return new Text(appBarTitles[curIndex],
          style: new TextStyle(color: const Color(0xff888888)));
    }
  }



}