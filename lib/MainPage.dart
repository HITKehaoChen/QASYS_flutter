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

  var _bodys;
  void initData(){
    _bodys = [
      new AskPage(),
      new HistoryPage(),
      new AboutPage(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar:  new AppBar(
        title: new Text("Home"),

      ),
      body: _bodys[_tabIndex],
      bottomNavigationBar: new BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          new BottomNavigationBarItem(
              icon: Icon(Icons.question_answer), title: getTabTitle(0)),
          new BottomNavigationBarItem(
              icon: Icon(Icons.history), title: getTabTitle(1)),
          new BottomNavigationBarItem(
              icon: Icon(Icons.info_outline), title: getTabTitle(2)),

        ],
        currentIndex:  _tabIndex,
        onTap: (index){
          setState(() {
            _tabIndex = index;
          });
        },
      ),
    );
  }



}