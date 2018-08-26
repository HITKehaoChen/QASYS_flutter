import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Flutter AskMe",
      theme: new ThemeData(
        primaryColor: Colors.green
      ),
      debugShowCheckedModeBanner: false,
      home: new Scaffold(
        body: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
         children: <Widget>[
         new Text("关于我们",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.0),
        ),
           new Text("我们是一只队员各自有事情的队伍..."
           ,style: TextStyle(fontWeight: FontWeight.w400,),)
         ],
        )
      ),
    );
  }
}